import 'package:pulumi/pulumi.dart';
import 'get_service_account_args2.dart';
import 'get_service_account_result2.dart';

/// Use this data source to get the Account ID of the [AWS Elastic Load Balancing Service Account](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html#attach-bucket-policy)
/// in a given region for the purpose of permitting in S3 bucket policy.
///
/// > **Note:** For AWS Regions opened since Jakarta (`ap-southeast-3`) in December 2021, AWS [documents that](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html#attach-bucket-policy) a [service principal name](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services) should be used instead of an AWS account ID in any relevant IAM policy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.elb.getServiceAccount({});
/// const elbLogs = new aws.s3.Bucket("elb_logs", {bucket: "my-elb-tf-test-bucket"});
/// const elbLogsAcl = new aws.s3.BucketAcl("elb_logs_acl", {
/// bucket: elbLogs.id,
/// acl: "private",
/// });
/// const allowElbLogging = pulumi.all([main, elbLogs.arn]).apply(([main, arn]) => aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "AWS",
/// identifiers: [main.arn],
/// }],
/// actions: ["s3:PutObject"],
/// resources: [`${arn}/AWSLogs/*`],
/// }],
/// }));
/// const allowElbLoggingBucketPolicy = new aws.s3.BucketPolicy("allow_elb_logging", {
/// bucket: elbLogs.id,
/// policy: allowElbLogging.apply(allowElbLogging => allowElbLogging.json),
/// });
/// const bar = new aws.elb.LoadBalancer("bar", {
/// name: "my-foobar-elb",
/// availabilityZones: ["us-west-2a"],
/// accessLogs: {
/// bucket: elbLogs.id,
/// interval: 5,
/// },
/// listeners: [{
/// instancePort: 8000,
/// instanceProtocol: "http",
/// lbPort: 80,
/// lbProtocol: "http",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.elb.get_service_account()
/// elb_logs = aws.s3.Bucket("elb_logs", bucket="my-elb-tf-test-bucket")
/// elb_logs_acl = aws.s3.BucketAcl("elb_logs_acl",
/// bucket=elb_logs.id,
/// acl="private")
/// allow_elb_logging = elb_logs.arn.apply(lambda arn: aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "AWS",
/// "identifiers": [main.arn],
/// }],
/// "actions": ["s3:PutObject"],
/// "resources": [f"{arn}/AWSLogs/*"],
/// }]))
/// allow_elb_logging_bucket_policy = aws.s3.BucketPolicy("allow_elb_logging",
/// bucket=elb_logs.id,
/// policy=allow_elb_logging.json)
/// bar = aws.elb.LoadBalancer("bar",
/// name="my-foobar-elb",
/// availability_zones=["us-west-2a"],
/// access_logs={
/// "bucket": elb_logs.id,
/// "interval": 5,
/// },
/// listeners=[{
/// "instance_port": 8000,
/// "instance_protocol": "http",
/// "lb_port": 80,
/// "lb_protocol": "http",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = Aws.Elb.GetServiceAccount.Invoke();
///
/// var elbLogs = new Aws.S3.Bucket("elb_logs", new()
/// {
/// BucketName = "my-elb-tf-test-bucket",
/// });
///
/// var elbLogsAcl = new Aws.S3.BucketAcl("elb_logs_acl", new()
/// {
/// Bucket = elbLogs.Id,
/// Acl = "private",
/// });
///
/// var allowElbLogging = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// main.Apply(getServiceAccountResult => getServiceAccountResult.Arn),
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "s3:PutObject",
/// },
/// Resources = new[]
/// {
/// $"{elbLogs.Arn}/AWSLogs/*",
/// },
/// },
/// },
/// });
///
/// var allowElbLoggingBucketPolicy = new Aws.S3.BucketPolicy("allow_elb_logging", new()
/// {
/// Bucket = elbLogs.Id,
/// Policy = allowElbLogging.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var bar = new Aws.Elb.LoadBalancer("bar", new()
/// {
/// Name = "my-foobar-elb",
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// },
/// AccessLogs = new Aws.Elb.Inputs.LoadBalancerAccessLogsArgs
/// {
/// Bucket = elbLogs.Id,
/// Interval = 5,
/// },
/// Listeners = new[]
/// {
/// new Aws.Elb.Inputs.LoadBalancerListenerArgs
/// {
/// InstancePort = 8000,
/// InstanceProtocol = "http",
/// LbPort = 80,
/// LbProtocol = "http",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// main, err := elb.GetServiceAccount(ctx, &elb.GetServiceAccountArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// elbLogs, err := s3.NewBucket(ctx, "elb_logs", &s3.BucketArgs{
/// Bucket: pulumi.String("my-elb-tf-test-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "elb_logs_acl", &s3.BucketAclArgs{
/// Bucket: elbLogs.ID(),
/// Acl: pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// allowElbLogging := elbLogs.Arn.ApplyT(func(arn string) (iam.GetPolicyDocumentResult, error) {
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: interface{}{
/// main.Arn,
/// },
/// },
/// },
/// Actions: []string{
/// "s3:PutObject",
/// },
/// Resources: []string{
/// fmt.Sprintf("%v/AWSLogs/*", arn),
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = s3.NewBucketPolicy(ctx, "allow_elb_logging", &s3.BucketPolicyArgs{
/// Bucket: elbLogs.ID(),
/// Policy: pulumi.String(allowElbLogging.ApplyT(func(allowElbLogging iam.GetPolicyDocumentResult) (*string, error) {
/// return &allowElbLogging.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = elb.NewLoadBalancer(ctx, "bar", &elb.LoadBalancerArgs{
/// Name: pulumi.String("my-foobar-elb"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// },
/// AccessLogs: &elb.LoadBalancerAccessLogsArgs{
/// Bucket: elbLogs.ID(),
/// Interval: pulumi.Int(5),
/// },
/// Listeners: elb.LoadBalancerListenerArray{
/// &elb.LoadBalancerListenerArgs{
/// InstancePort: pulumi.Int(8000),
/// InstanceProtocol: pulumi.String("http"),
/// LbPort: pulumi.Int(80),
/// LbProtocol: pulumi.String("http"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elb.ElbFunctions;
/// import com.pulumi.aws.elb.inputs.GetServiceAccountArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerAccessLogsArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var main = ElbFunctions.getServiceAccount(GetServiceAccountArgs.builder()
/// .build());
///
/// var elbLogs = new Bucket("elbLogs", BucketArgs.builder()
/// .bucket("my-elb-tf-test-bucket")
/// .build());
///
/// var elbLogsAcl = new BucketAcl("elbLogsAcl", BucketAclArgs.builder()
/// .bucket(elbLogs.id())
/// .acl("private")
/// .build());
///
/// final var allowElbLogging = elbLogs.arn().applyValue(_arn -> IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers(main.arn())
/// .build())
/// .actions("s3:PutObject")
/// .resources(String.format("%s/AWSLogs/*", _arn))
/// .build())
/// .build()));
///
/// var allowElbLoggingBucketPolicy = new BucketPolicy("allowElbLoggingBucketPolicy", BucketPolicyArgs.builder()
/// .bucket(elbLogs.id())
/// .policy(allowElbLogging.json())
/// .build());
///
/// var bar = new LoadBalancer("bar", LoadBalancerArgs.builder()
/// .name("my-foobar-elb")
/// .availabilityZones("us-west-2a")
/// .accessLogs(LoadBalancerAccessLogsArgs.builder()
/// .bucket(elbLogs.id())
/// .interval(5)
/// .build())
/// .listeners(LoadBalancerListenerArgs.builder()
/// .instancePort(8000)
/// .instanceProtocol("http")
/// .lbPort(80)
/// .lbProtocol("http")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// elbLogs:
/// type: aws:s3:Bucket
/// name: elb_logs
/// properties:
/// bucket: my-elb-tf-test-bucket
/// elbLogsAcl:
/// type: aws:s3:BucketAcl
/// name: elb_logs_acl
/// properties:
/// bucket: ${elbLogs.id}
/// acl: private
/// allowElbLoggingBucketPolicy:
/// type: aws:s3:BucketPolicy
/// name: allow_elb_logging
/// properties:
/// bucket: ${elbLogs.id}
/// policy: ${allowElbLogging.json}
/// bar:
/// type: aws:elb:LoadBalancer
/// properties:
/// name: my-foobar-elb
/// availabilityZones:
/// - us-west-2a
/// accessLogs:
/// bucket: ${elbLogs.id}
/// interval: 5
/// listeners:
/// - instancePort: 8000
/// instanceProtocol: http
/// lbPort: 80
/// lbProtocol: http
/// variables:
/// main:
/// fn::invoke:
/// function: aws:elb:getServiceAccount
/// arguments: {}
/// allowElbLogging:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: AWS
/// identifiers:
/// - ${main.arn}
/// actions:
/// - s3:PutObject
/// resources:
/// - ${elbLogs.arn}/AWSLogs/*
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServiceAccountResult2> getServiceAccount2(
  GetServiceAccountArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elb/getServiceAccount:getServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceAccountResult2.fromMap(result);
}
