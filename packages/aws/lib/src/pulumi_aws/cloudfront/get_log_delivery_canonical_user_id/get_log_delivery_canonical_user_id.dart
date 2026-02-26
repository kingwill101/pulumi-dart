import 'package:pulumi/pulumi.dart';
import 'get_log_delivery_canonical_user_id_args.dart';
import 'get_log_delivery_canonical_user_id_result.dart';

/// The CloudFront Log Delivery Canonical User ID data source allows access to the [canonical user ID](http://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html) of the AWS <span pulumi-lang-nodejs="`awslogsdelivery`" pulumi-lang-dotnet="`Awslogsdelivery`" pulumi-lang-go="`awslogsdelivery`" pulumi-lang-python="`awslogsdelivery`" pulumi-lang-yaml="`awslogsdelivery`" pulumi-lang-java="`awslogsdelivery`">`awslogsdelivery`</span> account for CloudFront bucket logging.
/// See the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html) for more information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.s3.getCanonicalUserId({});
/// const example = aws.cloudfront.getLogDeliveryCanonicalUserId({});
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleBucketOwnershipControls = new aws.s3.BucketOwnershipControls("example", {
/// bucket: exampleBucket.id,
/// rule: {
/// objectOwnership: "BucketOwnerPreferred",
/// },
/// });
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
/// bucket: exampleBucket.id,
/// accessControlPolicy: {
/// grants: [{
/// grantee: {
/// id: example.then(example => example.id),
/// type: "CanonicalUser",
/// },
/// permission: "FULL_CONTROL",
/// }],
/// owner: {
/// id: current.then(current => current.id),
/// },
/// },
/// }, {
/// dependsOn: [exampleBucketOwnershipControls],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.s3.get_canonical_user_id()
/// example = aws.cloudfront.get_log_delivery_canonical_user_id()
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example_bucket_ownership_controls = aws.s3.BucketOwnershipControls("example",
/// bucket=example_bucket.id,
/// rule={
/// "object_ownership": "BucketOwnerPreferred",
/// })
/// example_bucket_acl = aws.s3.BucketAcl("example",
/// bucket=example_bucket.id,
/// access_control_policy={
/// "grants": [{
/// "grantee": {
/// "id": example.id,
/// "type": "CanonicalUser",
/// },
/// "permission": "FULL_CONTROL",
/// }],
/// "owner": {
/// "id": current.id,
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_bucket_ownership_controls]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.S3.GetCanonicalUserId.Invoke();
///
/// var example = Aws.CloudFront.GetLogDeliveryCanonicalUserId.Invoke();
///
/// var exampleBucket = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example",
/// });
///
/// var exampleBucketOwnershipControls = new Aws.S3.BucketOwnershipControls("example", new()
/// {
/// Bucket = exampleBucket.Id,
/// Rule = new Aws.S3.Inputs.BucketOwnershipControlsRuleArgs
/// {
/// ObjectOwnership = "BucketOwnerPreferred",
/// },
/// });
///
/// var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
/// {
/// Bucket = exampleBucket.Id,
/// AccessControlPolicy = new Aws.S3.Inputs.BucketAclAccessControlPolicyArgs
/// {
/// Grants = new[]
/// {
/// new Aws.S3.Inputs.BucketAclAccessControlPolicyGrantArgs
/// {
/// Grantee = new Aws.S3.Inputs.BucketAclAccessControlPolicyGrantGranteeArgs
/// {
/// Id = example.Apply(getLogDeliveryCanonicalUserIdResult => getLogDeliveryCanonicalUserIdResult.Id),
/// Type = "CanonicalUser",
/// },
/// Permission = "FULL_CONTROL",
/// },
/// },
/// Owner = new Aws.S3.Inputs.BucketAclAccessControlPolicyOwnerArgs
/// {
/// Id = current.Apply(getCanonicalUserIdResult => getCanonicalUserIdResult.Id),
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleBucketOwnershipControls,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := s3.GetCanonicalUserId(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := cloudfront.GetLogDeliveryCanonicalUserId(ctx, &cloudfront.GetLogDeliveryCanonicalUserIdArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucketOwnershipControls, err := s3.NewBucketOwnershipControls(ctx, "example", &s3.BucketOwnershipControlsArgs{
/// Bucket: exampleBucket.ID(),
/// Rule: &s3.BucketOwnershipControlsRuleArgs{
/// ObjectOwnership: pulumi.String("BucketOwnerPreferred"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// Bucket: exampleBucket.ID(),
/// AccessControlPolicy: &s3.BucketAclAccessControlPolicyArgs{
/// Grants: s3.BucketAclAccessControlPolicyGrantArray{
/// &s3.BucketAclAccessControlPolicyGrantArgs{
/// Grantee: &s3.BucketAclAccessControlPolicyGrantGranteeArgs{
/// Id:   pulumi.String(example.Id),
/// Type: pulumi.String("CanonicalUser"),
/// },
/// Permission: pulumi.String("FULL_CONTROL"),
/// },
/// },
/// Owner: &s3.BucketAclAccessControlPolicyOwnerArgs{
/// Id: pulumi.String(current.Id),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleBucketOwnershipControls,
/// }))
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetLogDeliveryCanonicalUserIdArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketOwnershipControls;
/// import com.pulumi.aws.s3.BucketOwnershipControlsArgs;
/// import com.pulumi.aws.s3.inputs.BucketOwnershipControlsRuleArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.inputs.BucketAclAccessControlPolicyArgs;
/// import com.pulumi.aws.s3.inputs.BucketAclAccessControlPolicyOwnerArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// final var current = S3Functions.getCanonicalUserId(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// final var example = CloudfrontFunctions.getLogDeliveryCanonicalUserId(GetLogDeliveryCanonicalUserIdArgs.builder()
/// .build());
///
/// var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
/// .bucket("example")
/// .build());
///
/// var exampleBucketOwnershipControls = new BucketOwnershipControls("exampleBucketOwnershipControls", BucketOwnershipControlsArgs.builder()
/// .bucket(exampleBucket.id())
/// .rule(BucketOwnershipControlsRuleArgs.builder()
/// .objectOwnership("BucketOwnerPreferred")
/// .build())
/// .build());
///
/// var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
/// .bucket(exampleBucket.id())
/// .accessControlPolicy(BucketAclAccessControlPolicyArgs.builder()
/// .grants(BucketAclAccessControlPolicyGrantArgs.builder()
/// .grantee(BucketAclAccessControlPolicyGrantGranteeArgs.builder()
/// .id(example.id())
/// .type("CanonicalUser")
/// .build())
/// .permission("FULL_CONTROL")
/// .build())
/// .owner(BucketAclAccessControlPolicyOwnerArgs.builder()
/// .id(current.id())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleBucketOwnershipControls)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleBucket:
/// type: aws:s3:Bucket
/// name: example
/// properties:
/// bucket: example
/// exampleBucketOwnershipControls:
/// type: aws:s3:BucketOwnershipControls
/// name: example
/// properties:
/// bucket: ${exampleBucket.id}
/// rule:
/// objectOwnership: BucketOwnerPreferred
/// exampleBucketAcl:
/// type: aws:s3:BucketAcl
/// name: example
/// properties:
/// bucket: ${exampleBucket.id}
/// accessControlPolicy:
/// grants:
/// - grantee:
/// id: ${example.id}
/// type: CanonicalUser
/// permission: FULL_CONTROL
/// owner:
/// id: ${current.id}
/// options:
/// dependsOn:
/// - ${exampleBucketOwnershipControls}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:s3:getCanonicalUserId
/// arguments: {}
/// example:
/// fn::invoke:
/// function: aws:cloudfront:getLogDeliveryCanonicalUserId
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLogDeliveryCanonicalUserIdResult> getLogDeliveryCanonicalUserId(
  GetLogDeliveryCanonicalUserIdArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getLogDeliveryCanonicalUserId:getLogDeliveryCanonicalUserId',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLogDeliveryCanonicalUserIdResult.fromMap(result);
}
