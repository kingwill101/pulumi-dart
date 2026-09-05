import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_args.dart';
import 'workgroup_configuration.dart';
import 'workgroup_state.dart';

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
///     configuration: {
///         resultConfiguration: {
///             encryptionConfiguration: {
///                 encryptionOption: "SSE_KMS",
///                 kmsKeyArn: exampleAwsKmsKey.arn,
///             },
///             outputLocation: `s3://${exampleAwsS3Bucket.bucket}/output/`,
///         },
///         enforceWorkgroupConfiguration: true,
///         publishCloudwatchMetricsEnabled: true,
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.Workgroup("example",
///     configuration={
///         "result_configuration": {
///             "encryption_configuration": {
///                 "encryption_option": "SSE_KMS",
///                 "kms_key_arn": example_aws_kms_key["arn"],
///             },
///             "output_location": f"s3://{example_aws_s3_bucket['bucket']}/output/",
///         },
///         "enforce_workgroup_configuration": True,
///         "publish_cloudwatch_metrics_enabled": True,
///     },
///     name="example")
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
///         Configuration = new Aws.Athena.Inputs.WorkgroupConfigurationArgs
///         {
///             ResultConfiguration = new Aws.Athena.Inputs.WorkgroupConfigurationResultConfigurationArgs
///             {
///                 EncryptionConfiguration = new Aws.Athena.Inputs.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs
///                 {
///                     EncryptionOption = "SSE_KMS",
///                     KmsKeyArn = exampleAwsKmsKey.Arn,
///                 },
///                 OutputLocation = $"s3://{exampleAwsS3Bucket.Bucket}/output/",
///             },
///             EnforceWorkgroupConfiguration = true,
///             PublishCloudwatchMetricsEnabled = true,
///         },
///         Name = "example",
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
/// 			Configuration: &athena.WorkgroupConfigurationArgs{
/// 				ResultConfiguration: &athena.WorkgroupConfigurationResultConfigurationArgs{
/// 					EncryptionConfiguration: &athena.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs{
/// 						EncryptionOption: pulumi.String("SSE_KMS"),
/// 						KmsKeyArn:        pulumi.Any(exampleAwsKmsKey.Arn),
/// 					},
/// 					OutputLocation: pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Bucket),
/// 				},
/// 				EnforceWorkgroupConfiguration:   pulumi.Bool(true),
/// 				PublishCloudwatchMetricsEnabled: pulumi.Bool(true),
/// 			},
/// 			Name: pulumi.String("example"),
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
/// resource "aws_athena_workgroup" "example" {
///   configuration = {
///     result_configuration = {
///       encryption_configuration = {
///         encryption_option = "SSE_KMS"
///         kms_key_arn       = exampleAwsKmsKey.arn
///       }
///       output_location ="s3://${exampleAwsS3Bucket.bucket}/output/"
///     }
///     enforce_workgroup_configuration    = true
///     publish_cloudwatch_metrics_enabled = true
///   }
///   name = "example"
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
///         var example = new Workgroup("example", WorkgroupArgs.builder()
///             .configuration(WorkgroupConfigurationArgs.builder()
///                 .resultConfiguration(WorkgroupConfigurationResultConfigurationArgs.builder()
///                     .encryptionConfiguration(WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs.builder()
///                         .encryptionOption("SSE_KMS")
///                         .kmsKeyArn(exampleAwsKmsKey.arn())
///                         .build())
///                     .outputLocation(String.format("s3://%s/output/", exampleAwsS3Bucket.bucket()))
///                     .build())
///                 .enforceWorkgroupConfiguration(true)
///                 .publishCloudwatchMetricsEnabled(true)
///                 .build())
///             .name("example")
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
///       configuration:
///         resultConfiguration:
///           encryptionConfiguration:
///             encryptionOption: SSE_KMS
///             kmsKeyArn: ${exampleAwsKmsKey.arn}
///           outputLocation: s3://${exampleAwsS3Bucket.bucket}/output/
///         enforceWorkgroupConfiguration: true
///         publishCloudwatchMetricsEnabled: true
///       name: example
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
  /// Key-value map of resource tags for the workgroup. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<WorkgroupConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkgroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Workgroup] resource's state with the given [name] and [id].
  static Workgroup get(
    String name,
    pulumi.Input<String> id, {
    WorkgroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workgroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workgroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/workgroup:Workgroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<WorkgroupConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkgroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    this.state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Workgroup] resource.
  Workgroup.reference(String urn)
    : super(
        'aws:athena/workgroup:Workgroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<WorkgroupConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkgroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
