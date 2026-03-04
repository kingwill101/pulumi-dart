import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_account_args.dart';
import 'get_service_account_result.dart';

/// Use this data source to get the Account ID of the [AWS CloudTrail Service Account](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-supported-regions.html)
/// in a given region for the purpose of allowing CloudTrail to store trail data in S3.
///
/// &gt; **Warning:** This data source is deprecated. The AWS documentation [states that](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create-s3-bucket-policy-for-cloudtrail.html#troubleshooting-s3-bucket-policy) a [service principal name](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services) should be used instead of an AWS account ID in any relevant IAM policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.cloudtrail.getServiceAccount({});
/// const bucket = new aws.s3.Bucket("bucket", {
///     bucket: "tf-cloudtrail-logging-test-bucket",
///     forceDestroy: true,
/// });
/// const allowCloudtrailLogging = pulumi.all([main, bucket.arn, main, bucket.arn]).apply(([main, bucketArn, main1, bucketArn1]) => aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             sid: "Put bucket policy needed for trails",
///             effect: "Allow",
///             principals: [{
///                 type: "AWS",
///                 identifiers: [main.arn],
///             }],
///             actions: ["s3:PutObject"],
///             resources: [`${bucketArn}/*`],
///         },
///         {
///             sid: "Get bucket policy needed for trails",
///             effect: "Allow",
///             principals: [{
///                 type: "AWS",
///                 identifiers: [main1.arn],
///             }],
///             actions: ["s3:GetBucketAcl"],
///             resources: [bucketArn1],
///         },
///     ],
/// }));
/// const allowCloudtrailLoggingBucketPolicy = new aws.s3.BucketPolicy("allow_cloudtrail_logging", {
///     bucket: bucket.id,
///     policy: allowCloudtrailLogging.apply(allowCloudtrailLogging => allowCloudtrailLogging.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.cloudtrail.get_service_account()
/// bucket = aws.s3.Bucket("bucket",
///     bucket="tf-cloudtrail-logging-test-bucket",
///     force_destroy=True)
/// allow_cloudtrail_logging = pulumi.Output.all(
///     bucketArn=bucket.arn,
///     bucketArn1=bucket.arn
/// ).apply(lambda resolved_outputs: aws.iam.get_policy_document(statements=[
///     {
///         "sid": "Put bucket policy needed for trails",
///         "effect": "Allow",
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [main.arn],
///         }],
///         "actions": ["s3:PutObject"],
///         "resources": [f"{resolved_outputs['bucketArn']}/*"],
///     },
///     {
///         "sid": "Get bucket policy needed for trails",
///         "effect": "Allow",
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [main.arn],
///         }],
///         "actions": ["s3:GetBucketAcl"],
///         "resources": [resolved_outputs['bucketArn1']],
///     },
/// ]))
///
/// allow_cloudtrail_logging_bucket_policy = aws.s3.BucketPolicy("allow_cloudtrail_logging",
///     bucket=bucket.id,
///     policy=allow_cloudtrail_logging.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = Aws.CloudTrail.GetServiceAccount.Invoke();
///
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "tf-cloudtrail-logging-test-bucket",
///         ForceDestroy = true,
///     });
///
///     var allowCloudtrailLogging = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Sid = "Put bucket policy needed for trails",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             main.Apply(getServiceAccountResult => getServiceAccountResult.Arn),
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{bucket.Arn}/*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Sid = "Get bucket policy needed for trails",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             main.Apply(getServiceAccountResult => getServiceAccountResult.Arn),
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:GetBucketAcl",
///                 },
///                 Resources = new[]
///                 {
///                     bucket.Arn,
///                 },
///             },
///         },
///     });
///
///     var allowCloudtrailLoggingBucketPolicy = new Aws.S3.BucketPolicy("allow_cloudtrail_logging", new()
///     {
///         Bucket = bucket.Id,
///         Policy = allowCloudtrailLogging.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// main, err := cloudtrail.GetServiceAccount(ctx, &cloudtrail.GetServiceAccountArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// Bucket: pulumi.String("tf-cloudtrail-logging-test-bucket"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// allowCloudtrailLogging := pulumi.All(bucket.Arn,bucket.Arn).ApplyT(func(_args []interface{}) (iam.GetPolicyDocumentResult, error) {
/// bucketArn := _args[0].(string)
/// bucketArn1 := _args[1].(string)
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef(pulumi.String(pulumi.StringRef("Put bucket policy needed for trails"))),
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
/// fmt.Sprintf("%v/*", bucketArn),
/// },
/// },
/// {
/// Sid: pulumi.StringRef(pulumi.String(pulumi.StringRef("Get bucket policy needed for trails"))),
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
/// },
/// Resources: []string{
/// bucketArn1,
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = s3.NewBucketPolicy(ctx, "allow_cloudtrail_logging", &s3.BucketPolicyArgs{
/// Bucket: bucket.ID(),
/// Policy: pulumi.String(allowCloudtrailLogging.ApplyT(func(allowCloudtrailLogging iam.GetPolicyDocumentResult) (*string, error) {
/// return &allowCloudtrailLogging.Json, nil
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
/// import com.pulumi.aws.cloudtrail.CloudtrailFunctions;
/// import com.pulumi.aws.cloudtrail.inputs.GetServiceAccountArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var main = CloudtrailFunctions.getServiceAccount(GetServiceAccountArgs.builder()
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("tf-cloudtrail-logging-test-bucket")
///             .forceDestroy(true)
///             .build());
///
///         final var allowCloudtrailLogging = Output.tuple(bucket.arn(), bucket.arn()).applyValue(values -> {
///             var bucketArn = values.t1;
///             var bucketArn1 = values.t2;
///             return IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///                 .statements(
///                     GetPolicyDocumentStatementArgs.builder()
///                         .sid("Put bucket policy needed for trails")
///                         .effect("Allow")
///                         .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                             .type("AWS")
///                             .identifiers(main.arn())
///                             .build())
///                         .actions("s3:PutObject")
///                         .resources(String.format("%s/*", bucketArn))
///                         .build(),
///                     GetPolicyDocumentStatementArgs.builder()
///                         .sid("Get bucket policy needed for trails")
///                         .effect("Allow")
///                         .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                             .type("AWS")
///                             .identifiers(main.arn())
///                             .build())
///                         .actions("s3:GetBucketAcl")
///                         .resources(bucketArn1)
///                         .build())
///                 .build());
///         });
///
///         var allowCloudtrailLoggingBucketPolicy = new BucketPolicy("allowCloudtrailLoggingBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(bucket.id())
///             .policy(allowCloudtrailLogging.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-cloudtrail-logging-test-bucket
///       forceDestroy: true
///   allowCloudtrailLoggingBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: allow_cloudtrail_logging
///     properties:
///       bucket: ${bucket.id}
///       policy: ${allowCloudtrailLogging.json}
/// variables:
///   main:
///     fn::invoke:
///       function: aws:cloudtrail:getServiceAccount
///       arguments: {}
///   allowCloudtrailLogging:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: Put bucket policy needed for trails
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - ${main.arn}
///             actions:
///               - s3:PutObject
///             resources:
///               - ${bucket.arn}/*
///           - sid: Get bucket policy needed for trails
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - ${main.arn}
///             actions:
///               - s3:GetBucketAcl
///             resources:
///               - ${bucket.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudtrail_get_service_account_get_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAccountResult> getServiceAccount(
  GetServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudtrail/getServiceAccount:getServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAccountResult.fromMap(result);
}
