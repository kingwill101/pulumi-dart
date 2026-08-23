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
/// const allowCloudtrailLogging = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             sid: "Put bucket policy needed for trails",
///             effect: "Allow",
///             principals: [{
///                 type: "AWS",
///                 identifiers: [main.then(main => main.arn)],
///             }],
///             actions: ["s3:PutObject"],
///             resources: [pulumi.interpolate`${bucket.arn}/*`],
///         },
///         {
///             sid: "Get bucket policy needed for trails",
///             effect: "Allow",
///             principals: [{
///                 type: "AWS",
///                 identifiers: [main.then(main => main.arn)],
///             }],
///             actions: ["s3:GetBucketAcl"],
///             resources: [bucket.arn],
///         },
///     ],
/// });
/// const allowCloudtrailLoggingBucketPolicy = new aws.s3.BucketPolicy("allow_cloudtrail_logging", {
///     bucket: bucket.id,
///     policy: allowCloudtrailLogging.json,
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
/// allow_cloudtrail_logging = aws.iam.get_policy_document_output(statements=[
///     {
///         "sid": "Put bucket policy needed for trails",
///         "effect": "Allow",
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [main.arn],
///         }],
///         "actions": ["s3:PutObject"],
///         "resources": [bucket.arn.apply(lambda arn: f"{arn}/*")],
///     },
///     {
///         "sid": "Get bucket policy needed for trails",
///         "effect": "Allow",
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [main.arn],
///         }],
///         "actions": ["s3:GetBucketAcl"],
///         "resources": [bucket.arn],
///     },
/// ])
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
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "Put bucket policy needed for trails",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
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
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "Get bucket policy needed for trails",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := cloudtrail.GetServiceAccount(ctx, &cloudtrail.GetServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("tf-cloudtrail-logging-test-bucket"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		allowCloudtrailLogging := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Sid:    pulumi.String("Put bucket policy needed for trails"),
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String(main.Arn),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						bucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Sid:    pulumi.String("Get bucket policy needed for trails"),
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String(main.Arn),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetBucketAcl"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						bucket.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = s3.NewBucketPolicy(ctx, "allow_cloudtrail_logging", &s3.BucketPolicyArgs{
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: allowCloudtrailLogging.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_cloudtrail_getserviceaccount" "main" {
/// }
/// data "aws_iam_getpolicydocument" "allowCloudtrailLogging" {
///   statements {
///     sid    = "Put bucket policy needed for trails"
///     effect = "Allow"
///     principals {
///       type        = "AWS"
///       identifiers = [data.aws_cloudtrail_getserviceaccount.main.arn]
///     }
///     actions   = ["s3:PutObject"]
///     resources = ["${aws_s3_bucket.bucket.arn}/*"]
///   }
///   statements {
///     sid    = "Get bucket policy needed for trails"
///     effect = "Allow"
///     principals {
///       type        = "AWS"
///       identifiers = [data.aws_cloudtrail_getserviceaccount.main.arn]
///     }
///     actions   = ["s3:GetBucketAcl"]
///     resources = [aws_s3_bucket.bucket.arn]
///   }
/// }
///
/// resource "aws_s3_bucket" "bucket" {
///   bucket        = "tf-cloudtrail-logging-test-bucket"
///   force_destroy = true
/// }
/// resource "aws_s3_bucketpolicy" "allow_cloudtrail_logging" {
///   bucket = aws_s3_bucket.bucket.id
///   policy = data.aws_iam_getpolicydocument.allowCloudtrailLogging.json
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var allowCloudtrailLogging = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("Put bucket policy needed for trails")
///                     .effect("Allow")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(main.arn())
///                         .build())
///                     .actions("s3:PutObject")
///                     .resources(bucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("Get bucket policy needed for trails")
///                     .effect("Allow")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(main.arn())
///                         .build())
///                     .actions("s3:GetBucketAcl")
///                     .resources(bucket.arn())
///                     .build())
///             .build());
///
///         var allowCloudtrailLoggingBucketPolicy = new BucketPolicy("allowCloudtrailLoggingBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(bucket.id())
///             .policy(allowCloudtrailLogging.applyValue(_allowCloudtrailLogging -> _allowCloudtrailLogging.json()))
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
