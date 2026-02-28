import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_args.dart';
import 'workgroup_configuration.dart';

/// Provides an Athena Workgroup.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.athena.Workgroup("example", {
///     name: "example",
///     configuration: {
///         enforceWorkgroupConfiguration: true,
///         publishCloudwatchMetricsEnabled: true,
///         resultConfiguration: {
///             outputLocation: `s3://${exampleAwsS3Bucket.bucket}/output/`,
///             encryptionConfiguration: {
///                 encryptionOption: "SSE_KMS",
///                 kmsKeyArn: exampleAwsKmsKey.arn,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.Workgroup("example",
///     name="example",
///     configuration={
///         "enforce_workgroup_configuration": True,
///         "publish_cloudwatch_metrics_enabled": True,
///         "result_configuration": {
///             "output_location": f"s3://{example_aws_s3_bucket['bucket']}/output/",
///             "encryption_configuration": {
///                 "encryption_option": "SSE_KMS",
///                 "kms_key_arn": example_aws_kms_key["arn"],
///             },
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
///     var example = new Aws.Athena.Workgroup("example", new()
///     {
///         Name = "example",
///         Configuration = new Aws.Athena.Inputs.WorkgroupConfigurationArgs
///         {
///             EnforceWorkgroupConfiguration = true,
///             PublishCloudwatchMetricsEnabled = true,
///             ResultConfiguration = new Aws.Athena.Inputs.WorkgroupConfigurationResultConfigurationArgs
///             {
///                 OutputLocation = $"s3://{exampleAwsS3Bucket.Bucket}/output/",
///                 EncryptionConfiguration = new Aws.Athena.Inputs.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs
///                 {
///                     EncryptionOption = "SSE_KMS",
///                     KmsKeyArn = exampleAwsKmsKey.Arn,
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := athena.NewWorkgroup(ctx, "example", &athena.WorkgroupArgs{
/// 			Name: pulumi.String("example"),
/// 			Configuration: &athena.WorkgroupConfigurationArgs{
/// 				EnforceWorkgroupConfiguration:   pulumi.Bool(true),
/// 				PublishCloudwatchMetricsEnabled: pulumi.Bool(true),
/// 				ResultConfiguration: &athena.WorkgroupConfigurationResultConfigurationArgs{
/// 					OutputLocation: pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Bucket),
/// 					EncryptionConfiguration: &athena.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs{
/// 						EncryptionOption: pulumi.String("SSE_KMS"),
/// 						KmsKeyArn:        pulumi.Any(exampleAwsKmsKey.Arn),
/// 					},
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
/// import com.pulumi.aws.athena.Workgroup;
/// import com.pulumi.aws.athena.WorkgroupArgs;
/// import com.pulumi.aws.athena.inputs.WorkgroupConfigurationArgs;
/// import com.pulumi.aws.athena.inputs.WorkgroupConfigurationResultConfigurationArgs;
/// import com.pulumi.aws.athena.inputs.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs;
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
///         var example = new Workgroup("example", WorkgroupArgs.builder()
///             .name("example")
///             .configuration(WorkgroupConfigurationArgs.builder()
///                 .enforceWorkgroupConfiguration(true)
///                 .publishCloudwatchMetricsEnabled(true)
///                 .resultConfiguration(WorkgroupConfigurationResultConfigurationArgs.builder()
///                     .outputLocation(String.format("s3://%s/output/", exampleAwsS3Bucket.bucket()))
///                     .encryptionConfiguration(WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs.builder()
///                         .encryptionOption("SSE_KMS")
///                         .kmsKeyArn(exampleAwsKmsKey.arn())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:athena:Workgroup
///     properties:
///       name: example
///       configuration:
///         enforceWorkgroupConfiguration: true
///         publishCloudwatchMetricsEnabled: true
///         resultConfiguration:
///           outputLocation: s3://${exampleAwsS3Bucket.bucket}/output/
///           encryptionConfiguration:
///             encryptionOption: SSE_KMS
///             kmsKeyArn: ${exampleAwsKmsKey.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Workgroups using their name. For example:
///
/// ```sh
/// $ pulumi import aws:athena/workgroup:Workgroup example example
/// ```
class Workgroup extends pulumi.CustomResource {
  /// ARN of the workgroup
  late final pulumi.Output<String> arn;
  /// Configuration block with various settings for the workgroup. Documented below.
  late final pulumi.Output<WorkgroupConfiguration?> configuration;
  /// Description of the workgroup.
  late final pulumi.Output<String?> description;
  /// Option to delete the workgroup and its contents even if the workgroup contains any named queries.
  late final pulumi.Output<bool?> forceDestroy;
  /// Name of the workgroup.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the workgroup. Valid values are `DISABLED` or `ENABLED`. Defaults to `ENABLED`.
  late final pulumi.Output<String?> state;
  /// Key-value map of resource tags for the workgroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Workgroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workgroup]. {@macro pulumi_athena_workgroup_workgroup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workgroup(
    String name, {
    WorkgroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/workgroup:Workgroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configuration = registerOutput<WorkgroupConfiguration?>('configuration');
    this.description = registerOutput<String?>('description');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String?>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
