import 'package:pulumi/pulumi.dart';
import 'get_billing_service_account_args.dart';
import 'get_billing_service_account_result.dart';

/// Use this data source to get the Account ID of the [AWS Billing and Cost Management Service Account](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-getting-started.html#step-2) for the purpose of permitting in S3 bucket policy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.getBillingServiceAccount({});
/// const billingLogs = new aws.s3.Bucket("billing_logs", {bucket: "my-billing-tf-test-bucket"});
/// const billingLogsAcl = new aws.s3.BucketAcl("billing_logs_acl", {
/// bucket: billingLogs.id,
/// acl: "private",
/// });
/// const allowBillingLogging = pulumi.all([main, billingLogs.arn, main, billingLogs.arn]).apply(([main, billingLogsArn, main1, billingLogsArn1]) => aws.iam.getPolicyDocumentOutput({
/// statements: [
/// {
/// effect: "Allow",
/// principals: [{
/// type: "AWS",
/// identifiers: [main.arn],
/// }],
/// actions: [
/// "s3:GetBucketAcl",
/// "s3:GetBucketPolicy",
/// ],
/// resources: [billingLogsArn],
/// },
/// {
/// effect: "Allow",
/// principals: [{
/// type: "AWS",
/// identifiers: [main1.arn],
/// }],
/// actions: ["s3:PutObject"],
/// resources: [`${billingLogsArn1}/*`],
/// },
/// ],
/// }));
/// const allowBillingLoggingBucketPolicy = new aws.s3.BucketPolicy("allow_billing_logging", {
/// bucket: billingLogs.id,
/// policy: allowBillingLogging.apply(allowBillingLogging => allowBillingLogging.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.get_billing_service_account()
/// billing_logs = aws.s3.Bucket("billing_logs", bucket="my-billing-tf-test-bucket")
/// billing_logs_acl = aws.s3.BucketAcl("billing_logs_acl",
/// bucket=billing_logs.id,
/// acl="private")
/// allow_billing_logging = pulumi.Output.all(
/// billingLogsArn=billing_logs.arn,
/// billingLogsArn1=billing_logs.arn
/// ).apply(lambda resolved_outputs: aws.iam.get_policy_document(statements=[
/// {
/// "effect": "Allow",
/// "principals": [{
/// "type": "AWS",
/// "identifiers": [main.arn],
/// }],
/// "actions": [
/// "s3:GetBucketAcl",
/// "s3:GetBucketPolicy",
/// ],
/// "resources": [resolved_outputs['billingLogsArn']],
/// },
/// {
/// "effect": "Allow",
/// "principals": [{
/// "type": "AWS",
/// "identifiers": [main.arn],
/// }],
/// "actions": ["s3:PutObject"],
/// "resources": [f"{resolved_outputs['billingLogsArn1']}/*"],
/// },
/// ]))
///
/// allow_billing_logging_bucket_policy = aws.s3.BucketPolicy("allow_billing_logging",
/// bucket=billing_logs.id,
/// policy=allow_billing_logging.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = Aws.GetBillingServiceAccount.Invoke();
///
/// var billingLogs = new Aws.S3.Bucket("billing_logs", new()
/// {
/// BucketName = "my-billing-tf-test-bucket",
/// });
///
/// var billingLogsAcl = new Aws.S3.BucketAcl("billing_logs_acl", new()
/// {
/// Bucket = billingLogs.Id,
/// Acl = "private",
/// });
///
/// var allowBillingLogging = Aws.Iam.GetPolicyDocument.Invoke(new()
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
/// main.Apply(getBillingServiceAccountResult => getBillingServiceAccountResult.Arn),
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "s3:GetBucketAcl",
/// "s3:GetBucketPolicy",
/// },
/// Resources = new[]
/// {
/// billingLogs.Arn,
/// },
/// },
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
/// main.Apply(getBillingServiceAccountResult => getBillingServiceAccountResult.Arn),
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "s3:PutObject",
/// },
/// Resources = new[]
/// {
/// $"{billingLogs.Arn}/*",
/// },
/// },
/// },
/// });
///
/// var allowBillingLoggingBucketPolicy = new Aws.S3.BucketPolicy("allow_billing_logging", new()
/// {
/// Bucket = billingLogs.Id,
/// Policy = allowBillingLogging.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// main, err := aws.GetBillingServiceAccount(ctx, &aws.GetBillingServiceAccountArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// billingLogs, err := s3.NewBucket(ctx, "billing_logs", &s3.BucketArgs{
/// Bucket: pulumi.String("my-billing-tf-test-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "billing_logs_acl", &s3.BucketAclArgs{
/// Bucket: billingLogs.ID(),
/// Acl: pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// allowBillingLogging := pulumi.All(billingLogs.Arn,billingLogs.Arn).ApplyT(func(_args []interface{}) (iam.GetPolicyDocumentResult, error) {
/// billingLogsArn := _args[0].(string)
/// billingLogsArn1 := _args[1].(string)
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement(pulumi.Array{
/// iam.GetPolicyDocumentStatement{
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
/// "s3:GetBucketAcl",
/// "s3:GetBucketPolicy",
/// },
/// Resources: []string{
/// billingLogsArn,
/// },
/// },
/// iam.GetPolicyDocumentStatement{
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
/// fmt.Sprintf("%v/*", billingLogsArn1),
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = s3.NewBucketPolicy(ctx, "allow_billing_logging", &s3.BucketPolicyArgs{
/// Bucket: billingLogs.ID(),
/// Policy: pulumi.String(allowBillingLogging.ApplyT(func(allowBillingLogging iam.GetPolicyDocumentResult) (*string, error) {
/// return &allowBillingLogging.Json, nil
/// }).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetBillingServiceAccountArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
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
/// final var main = AwsFunctions.getBillingServiceAccount(GetBillingServiceAccountArgs.builder()
/// .build());
///
/// var billingLogs = new Bucket("billingLogs", BucketArgs.builder()
/// .bucket("my-billing-tf-test-bucket")
/// .build());
///
/// var billingLogsAcl = new BucketAcl("billingLogsAcl", BucketAclArgs.builder()
/// .bucket(billingLogs.id())
/// .acl("private")
/// .build());
///
/// final var allowBillingLogging = Output.tuple(billingLogs.arn(), billingLogs.arn()).applyValue(values -> {
/// var billingLogsArn = values.t1;
/// var billingLogsArn1 = values.t2;
/// return IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers(main.arn())
/// .build())
/// .actions(
/// "s3:GetBucketAcl",
/// "s3:GetBucketPolicy")
/// .resources(billingLogsArn)
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers(main.arn())
/// .build())
/// .actions("s3:PutObject")
/// .resources(String.format("%s/*", billingLogsArn1))
/// .build())
/// .build());
/// });
///
/// var allowBillingLoggingBucketPolicy = new BucketPolicy("allowBillingLoggingBucketPolicy", BucketPolicyArgs.builder()
/// .bucket(billingLogs.id())
/// .policy(allowBillingLogging.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// billingLogs:
/// type: aws:s3:Bucket
/// name: billing_logs
/// properties:
/// bucket: my-billing-tf-test-bucket
/// billingLogsAcl:
/// type: aws:s3:BucketAcl
/// name: billing_logs_acl
/// properties:
/// bucket: ${billingLogs.id}
/// acl: private
/// allowBillingLoggingBucketPolicy:
/// type: aws:s3:BucketPolicy
/// name: allow_billing_logging
/// properties:
/// bucket: ${billingLogs.id}
/// policy: ${allowBillingLogging.json}
/// variables:
/// main:
/// fn::invoke:
/// function: aws:getBillingServiceAccount
/// arguments: {}
/// allowBillingLogging:
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
/// - s3:GetBucketAcl
/// - s3:GetBucketPolicy
/// resources:
/// - ${billingLogs.arn}
/// - effect: Allow
/// principals:
/// - type: AWS
/// identifiers:
/// - ${main.arn}
/// actions:
/// - s3:PutObject
/// resources:
/// - ${billingLogs.arn}/*
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBillingServiceAccountResult> getBillingServiceAccount(
  GetBillingServiceAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getBillingServiceAccount:getBillingServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBillingServiceAccountResult.fromMap(result);
}
