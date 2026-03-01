import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_group_args.dart';
import 'report_group_export_config.dart';

/// Provides a CodeBuild Report Groups Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = current.then(current => aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "Enable IAM User Permissions",
///         effect: "Allow",
///         principals: [{
///             type: "AWS",
///             identifiers: [`arn:aws:iam::${current.accountId}:root`],
///         }],
///         actions: ["kms:*"],
///         resources: ["*"],
///     }],
/// }));
/// const exampleKey = new aws.kms.Key("example", {
///     description: "my test kms key",
///     deletionWindowInDays: 7,
///     policy: example.then(example => example.json),
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "my-test"});
/// const exampleReportGroup = new aws.codebuild.ReportGroup("example", {
///     name: "my test report group",
///     type: "TEST",
///     exportConfig: {
///         type: "S3",
///         s3Destination: {
///             bucket: exampleBucket.id,
///             encryptionDisabled: false,
///             encryptionKey: exampleKey.arn,
///             packaging: "NONE",
///             path: "/some",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.iam.get_policy_document(statements=[{
///     "sid": "Enable IAM User Permissions",
///     "effect": "Allow",
///     "principals": [{
///         "type": "AWS",
///         "identifiers": [f"arn:aws:iam::{current.account_id}:root"],
///     }],
///     "actions": ["kms:*"],
///     "resources": ["*"],
/// }])
/// example_key = aws.kms.Key("example",
///     description="my test kms key",
///     deletion_window_in_days=7,
///     policy=example.json)
/// example_bucket = aws.s3.Bucket("example", bucket="my-test")
/// example_report_group = aws.codebuild.ReportGroup("example",
///     name="my test report group",
///     type="TEST",
///     export_config={
///         "type": "S3",
///         "s3_destination": {
///             "bucket": example_bucket.id,
///             "encryption_disabled": False,
///             "encryption_key": example_key.arn,
///             "packaging": "NONE",
///             "path": "/some",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "Enable IAM User Permissions",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "kms:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Aws.Kms.Key("example", new()
///     {
///         Description = "my test kms key",
///         DeletionWindowInDays = 7,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "my-test",
///     });
///
///     var exampleReportGroup = new Aws.CodeBuild.ReportGroup("example", new()
///     {
///         Name = "my test report group",
///         Type = "TEST",
///         ExportConfig = new Aws.CodeBuild.Inputs.ReportGroupExportConfigArgs
///         {
///             Type = "S3",
///             S3Destination = new Aws.CodeBuild.Inputs.ReportGroupExportConfigS3DestinationArgs
///             {
///                 Bucket = exampleBucket.Id,
///                 EncryptionDisabled = false,
///                 EncryptionKey = exampleKey.Arn,
///                 Packaging = "NONE",
///                 Path = "/some",
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("Enable IAM User Permissions"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"kms:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("my test kms key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 			Policy:               pulumi.String(example.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codebuild.NewReportGroup(ctx, "example", &codebuild.ReportGroupArgs{
/// 			Name: pulumi.String("my test report group"),
/// 			Type: pulumi.String("TEST"),
/// 			ExportConfig: &codebuild.ReportGroupExportConfigArgs{
/// 				Type: pulumi.String("S3"),
/// 				S3Destination: &codebuild.ReportGroupExportConfigS3DestinationArgs{
/// 					Bucket:             exampleBucket.ID(),
/// 					EncryptionDisabled: pulumi.Bool(false),
/// 					EncryptionKey:      exampleKey.Arn,
/// 					Packaging:          pulumi.String("NONE"),
/// 					Path:               pulumi.String("/some"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.codebuild.ReportGroup;
/// import com.pulumi.aws.codebuild.ReportGroupArgs;
/// import com.pulumi.aws.codebuild.inputs.ReportGroupExportConfigArgs;
/// import com.pulumi.aws.codebuild.inputs.ReportGroupExportConfigS3DestinationArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("Enable IAM User Permissions")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers(String.format("arn:aws:iam::%s:root", current.accountId()))
///                     .build())
///                 .actions("kms:*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .description("my test kms key")
///             .deletionWindowInDays(7)
///             .policy(example.json())
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("my-test")
///             .build());
///
///         var exampleReportGroup = new ReportGroup("exampleReportGroup", ReportGroupArgs.builder()
///             .name("my test report group")
///             .type("TEST")
///             .exportConfig(ReportGroupExportConfigArgs.builder()
///                 .type("S3")
///                 .s3Destination(ReportGroupExportConfigS3DestinationArgs.builder()
///                     .bucket(exampleBucket.id())
///                     .encryptionDisabled(false)
///                     .encryptionKey(exampleKey.arn())
///                     .packaging("NONE")
///                     .path("/some")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleKey:
///     type: aws:kms:Key
///     name: example
///     properties:
///       description: my test kms key
///       deletionWindowInDays: 7
///       policy: ${example.json}
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: my-test
///   exampleReportGroup:
///     type: aws:codebuild:ReportGroup
///     name: example
///     properties:
///       name: my test report group
///       type: TEST
///       exportConfig:
///         type: S3
///         s3Destination:
///           bucket: ${exampleBucket.id}
///           encryptionDisabled: false
///           encryptionKey: ${exampleKey.arn}
///           packaging: NONE
///           path: /some
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: Enable IAM User Permissions
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - arn:aws:iam::${current.accountId}:root
///             actions:
///               - kms:*
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeBuild report group.
///
///
/// Using `pulumi import`, import CodeBuild Report Group using the CodeBuild Report Group arn. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/reportGroup:ReportGroup example arn:aws:codebuild:us-west-2:123456789:report-group/report-group-name
/// ```
class ReportGroup extends pulumi.CustomResource {
  /// The ARN of Report Group.
  late final pulumi.Output<String> arn;

  /// The date and time this Report Group was created.
  late final pulumi.Output<String> created;

  /// If `true`, deletes any reports that belong to a report group before deleting the report group. If `false`, you must delete any reports in the report group before deleting it. Default value is `false`.
  late final pulumi.Output<bool?> deleteReports;

  /// Information about the destination where the raw data of this Report Group is exported. see Export Config documented below.
  late final pulumi.Output<ReportGroupExportConfig> exportConfig;

  /// The name of a Report Group.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of the Report Group. Valid value are `TEST` and `CODE_COVERAGE`.
  late final pulumi.Output<String> type;

  /// Creates a new [ReportGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReportGroup]. {@macro pulumi_codebuild_report_group_report_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReportGroup(
    String name, {
    ReportGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:codebuild/reportGroup:ReportGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.created = registerOutput<String>('created');
    this.deleteReports = registerOutput<bool?>('deleteReports');
    this.exportConfig = registerOutput<ReportGroupExportConfig>('exportConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
