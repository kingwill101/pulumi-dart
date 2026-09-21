import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_project_args.dart';
import 'migration_project_schema_conversion_application_attributes.dart';
import 'migration_project_source_data_provider_descriptor.dart';
import 'migration_project_state.dart';
import 'migration_project_target_data_provider_descriptor.dart';
import 'migration_project_timeouts.dart';

/// Manages an AWS DMS (Database Migration) Migration Project. A migration project groups the instance profile and data providers used together in a DMS Schema Conversion or homogeneous data migration.
///
/// Create an instance profile and data providers before creating a migration project.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dms.MigrationProject("example", {
///     sourceDataProviderDescriptors: [{
///         dataProviderArn: source.arn,
///     }],
///     targetDataProviderDescriptors: [{
///         dataProviderArn: target.arn,
///     }],
///     instanceProfileArn: exampleAwsDmsInstanceProfile.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dms.MigrationProject("example",
///     source_data_provider_descriptors=[{
///         "data_provider_arn": source["arn"],
///     }],
///     target_data_provider_descriptors=[{
///         "data_provider_arn": target["arn"],
///     }],
///     instance_profile_arn=example_aws_dms_instance_profile["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Dms.MigrationProject("example", new()
///     {
///         SourceDataProviderDescriptors = new[]
///         {
///             new Aws.Dms.Inputs.MigrationProjectSourceDataProviderDescriptorArgs
///             {
///                 DataProviderArn = source.Arn,
///             },
///         },
///         TargetDataProviderDescriptors = new[]
///         {
///             new Aws.Dms.Inputs.MigrationProjectTargetDataProviderDescriptorArgs
///             {
///                 DataProviderArn = target.Arn,
///             },
///         },
///         InstanceProfileArn = exampleAwsDmsInstanceProfile.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.NewMigrationProject(ctx, "example", &dms.MigrationProjectArgs{
/// 			SourceDataProviderDescriptors: dms.MigrationProjectSourceDataProviderDescriptorArray{
/// 				&dms.MigrationProjectSourceDataProviderDescriptorArgs{
/// 					DataProviderArn: pulumi.Any(source.Arn),
/// 				},
/// 			},
/// 			TargetDataProviderDescriptors: dms.MigrationProjectTargetDataProviderDescriptorArray{
/// 				&dms.MigrationProjectTargetDataProviderDescriptorArgs{
/// 					DataProviderArn: pulumi.Any(target.Arn),
/// 				},
/// 			},
/// 			InstanceProfileArn: pulumi.Any(exampleAwsDmsInstanceProfile.Arn),
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
/// resource "aws_dms_migrationproject" "example" {
///   source_data_provider_descriptors {
///     data_provider_arn = source.arn
///   }
///   target_data_provider_descriptors {
///     data_provider_arn = target.arn
///   }
///   instance_profile_arn = exampleAwsDmsInstanceProfile.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dms.MigrationProject;
/// import com.pulumi.aws.dms.MigrationProjectArgs;
/// import com.pulumi.aws.dms.inputs.MigrationProjectSourceDataProviderDescriptorArgs;
/// import com.pulumi.aws.dms.inputs.MigrationProjectTargetDataProviderDescriptorArgs;
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
///         var example = new MigrationProject("example", MigrationProjectArgs.builder()
///             .sourceDataProviderDescriptors(MigrationProjectSourceDataProviderDescriptorArgs.builder()
///                 .dataProviderArn(source.arn())
///                 .build())
///             .targetDataProviderDescriptors(MigrationProjectTargetDataProviderDescriptorArgs.builder()
///                 .dataProviderArn(target.arn())
///                 .build())
///             .instanceProfileArn(exampleAwsDmsInstanceProfile.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dms:MigrationProject
///     properties:
///       sourceDataProviderDescriptors:
///         - dataProviderArn: ${source.arn}
///       targetDataProviderDescriptors:
///         - dataProviderArn: ${target.arn}
///       instanceProfileArn: ${exampleAwsDmsInstanceProfile.arn}
/// ```
///
///
/// ### With Secrets Manager Credentials
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dms.MigrationProject("example", {
///     schemaConversionApplicationAttributes: {
///         s3BucketPath: "s3://example-bucket",
///         s3BucketRoleArn: exampleAwsIamRole.arn,
///     },
///     sourceDataProviderDescriptors: [{
///         dataProviderArn: source.arn,
///         secretsManagerAccessRoleArn: exampleAwsIamRole.arn,
///         secretsManagerSecretId: sourceAwsSecretsmanagerSecret.arn,
///     }],
///     targetDataProviderDescriptors: [{
///         dataProviderArn: target.arn,
///         secretsManagerAccessRoleArn: exampleAwsIamRole.arn,
///         secretsManagerSecretId: targetAwsSecretsmanagerSecret.arn,
///     }],
///     name: "example",
///     description: "Example migration project",
///     instanceProfileArn: exampleAwsDmsInstanceProfile.arn,
///     tags: {
///         Environment: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dms.MigrationProject("example",
///     schema_conversion_application_attributes={
///         "s3_bucket_path": "s3://example-bucket",
///         "s3_bucket_role_arn": example_aws_iam_role["arn"],
///     },
///     source_data_provider_descriptors=[{
///         "data_provider_arn": source["arn"],
///         "secrets_manager_access_role_arn": example_aws_iam_role["arn"],
///         "secrets_manager_secret_id": source_aws_secretsmanager_secret["arn"],
///     }],
///     target_data_provider_descriptors=[{
///         "data_provider_arn": target["arn"],
///         "secrets_manager_access_role_arn": example_aws_iam_role["arn"],
///         "secrets_manager_secret_id": target_aws_secretsmanager_secret["arn"],
///     }],
///     name="example",
///     description="Example migration project",
///     instance_profile_arn=example_aws_dms_instance_profile["arn"],
///     tags={
///         "Environment": "example",
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
///     var example = new Aws.Dms.MigrationProject("example", new()
///     {
///         SchemaConversionApplicationAttributes = new Aws.Dms.Inputs.MigrationProjectSchemaConversionApplicationAttributesArgs
///         {
///             S3BucketPath = "s3://example-bucket",
///             S3BucketRoleArn = exampleAwsIamRole.Arn,
///         },
///         SourceDataProviderDescriptors = new[]
///         {
///             new Aws.Dms.Inputs.MigrationProjectSourceDataProviderDescriptorArgs
///             {
///                 DataProviderArn = source.Arn,
///                 SecretsManagerAccessRoleArn = exampleAwsIamRole.Arn,
///                 SecretsManagerSecretId = sourceAwsSecretsmanagerSecret.Arn,
///             },
///         },
///         TargetDataProviderDescriptors = new[]
///         {
///             new Aws.Dms.Inputs.MigrationProjectTargetDataProviderDescriptorArgs
///             {
///                 DataProviderArn = target.Arn,
///                 SecretsManagerAccessRoleArn = exampleAwsIamRole.Arn,
///                 SecretsManagerSecretId = targetAwsSecretsmanagerSecret.Arn,
///             },
///         },
///         Name = "example",
///         Description = "Example migration project",
///         InstanceProfileArn = exampleAwsDmsInstanceProfile.Arn,
///         Tags =
///         {
///             { "Environment", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.NewMigrationProject(ctx, "example", &dms.MigrationProjectArgs{
/// 			SchemaConversionApplicationAttributes: &dms.MigrationProjectSchemaConversionApplicationAttributesArgs{
/// 				S3BucketPath:    pulumi.String("s3://example-bucket"),
/// 				S3BucketRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 			SourceDataProviderDescriptors: dms.MigrationProjectSourceDataProviderDescriptorArray{
/// 				&dms.MigrationProjectSourceDataProviderDescriptorArgs{
/// 					DataProviderArn:             pulumi.Any(source.Arn),
/// 					SecretsManagerAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 					SecretsManagerSecretId:      pulumi.Any(sourceAwsSecretsmanagerSecret.Arn),
/// 				},
/// 			},
/// 			TargetDataProviderDescriptors: dms.MigrationProjectTargetDataProviderDescriptorArray{
/// 				&dms.MigrationProjectTargetDataProviderDescriptorArgs{
/// 					DataProviderArn:             pulumi.Any(target.Arn),
/// 					SecretsManagerAccessRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 					SecretsManagerSecretId:      pulumi.Any(targetAwsSecretsmanagerSecret.Arn),
/// 				},
/// 			},
/// 			Name:               pulumi.String("example"),
/// 			Description:        pulumi.String("Example migration project"),
/// 			InstanceProfileArn: pulumi.Any(exampleAwsDmsInstanceProfile.Arn),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("example"),
/// 			},
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
/// resource "aws_dms_migrationproject" "example" {
///   schema_conversion_application_attributes = {
///     s3_bucket_path     = "s3://example-bucket"
///     s3_bucket_role_arn = exampleAwsIamRole.arn
///   }
///   source_data_provider_descriptors {
///     data_provider_arn               = source.arn
///     secrets_manager_access_role_arn = exampleAwsIamRole.arn
///     secrets_manager_secret_id       = sourceAwsSecretsmanagerSecret.arn
///   }
///   target_data_provider_descriptors {
///     data_provider_arn               = target.arn
///     secrets_manager_access_role_arn = exampleAwsIamRole.arn
///     secrets_manager_secret_id       = targetAwsSecretsmanagerSecret.arn
///   }
///   name                 = "example"
///   description          = "Example migration project"
///   instance_profile_arn = exampleAwsDmsInstanceProfile.arn
///   tags = {
///     "Environment" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dms.MigrationProject;
/// import com.pulumi.aws.dms.MigrationProjectArgs;
/// import com.pulumi.aws.dms.inputs.MigrationProjectSchemaConversionApplicationAttributesArgs;
/// import com.pulumi.aws.dms.inputs.MigrationProjectSourceDataProviderDescriptorArgs;
/// import com.pulumi.aws.dms.inputs.MigrationProjectTargetDataProviderDescriptorArgs;
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
///         var example = new MigrationProject("example", MigrationProjectArgs.builder()
///             .schemaConversionApplicationAttributes(MigrationProjectSchemaConversionApplicationAttributesArgs.builder()
///                 .s3BucketPath("s3://example-bucket")
///                 .s3BucketRoleArn(exampleAwsIamRole.arn())
///                 .build())
///             .sourceDataProviderDescriptors(MigrationProjectSourceDataProviderDescriptorArgs.builder()
///                 .dataProviderArn(source.arn())
///                 .secretsManagerAccessRoleArn(exampleAwsIamRole.arn())
///                 .secretsManagerSecretId(sourceAwsSecretsmanagerSecret.arn())
///                 .build())
///             .targetDataProviderDescriptors(MigrationProjectTargetDataProviderDescriptorArgs.builder()
///                 .dataProviderArn(target.arn())
///                 .secretsManagerAccessRoleArn(exampleAwsIamRole.arn())
///                 .secretsManagerSecretId(targetAwsSecretsmanagerSecret.arn())
///                 .build())
///             .name("example")
///             .description("Example migration project")
///             .instanceProfileArn(exampleAwsDmsInstanceProfile.arn())
///             .tags(Map.of("Environment", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dms:MigrationProject
///     properties:
///       schemaConversionApplicationAttributes:
///         s3BucketPath: s3://example-bucket
///         s3BucketRoleArn: ${exampleAwsIamRole.arn}
///       sourceDataProviderDescriptors:
///         - dataProviderArn: ${source.arn}
///           secretsManagerAccessRoleArn: ${exampleAwsIamRole.arn}
///           secretsManagerSecretId: ${sourceAwsSecretsmanagerSecret.arn}
///       targetDataProviderDescriptors:
///         - dataProviderArn: ${target.arn}
///           secretsManagerAccessRoleArn: ${exampleAwsIamRole.arn}
///           secretsManagerSecretId: ${targetAwsSecretsmanagerSecret.arn}
///       name: example
///       description: Example migration project
///       instanceProfileArn: ${exampleAwsDmsInstanceProfile.arn}
///       tags:
///         Environment: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the migration project.
///
///
/// Using `pulumi import`, import a DMS migration project using its full ARN. For example:
///
/// ```sh
/// $ pulumi import aws:dms/migrationProject:MigrationProject example arn:aws:dms:us-east-1:123456789012:migration-project:EXAMPLEABCDEFGHIJKLMNOPQRS
/// ```
class MigrationProject extends pulumi.CustomResource {
  /// ARN of the migration project.
  late final pulumi.Output<String> arn;
  /// Time the migration project was created, in RFC3339 format.
  late final pulumi.Output<String> creationTime;
  /// User-friendly description of the migration project.
  late final pulumi.Output<String?> description;
  /// ARN of the instance profile associated with the migration project.
  late final pulumi.Output<String> instanceProfileArn;
  /// Name of the associated instance profile.
  late final pulumi.Output<String> instanceProfileName;
  /// User-friendly name for the migration project.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Schema conversion application attributes, including the S3 bucket path and S3 role ARN. See `schemaConversionApplicationAttributes` Block below.
  late final pulumi.Output<MigrationProjectSchemaConversionApplicationAttributes?> schemaConversionApplicationAttributes;
  /// Information about the source data provider. See `sourceDataProviderDescriptor` Block below.
  late final pulumi.Output<List<MigrationProjectSourceDataProviderDescriptor>> sourceDataProviderDescriptors;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Information about the target data provider. See `targetDataProviderDescriptor` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<MigrationProjectTargetDataProviderDescriptor>> targetDataProviderDescriptors;
  late final pulumi.Output<MigrationProjectTimeouts?> timeouts;
  /// JSON string that specifies the transformation rules for the migration project. Homogeneous data migrations do not support transformation rules.
  late final pulumi.Output<String?> transformationRules;

  /// Creates a new [MigrationProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigrationProject]. {@macro pulumi_dms_migration_project_migration_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigrationProject(
    String name, {
    MigrationProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/migrationProject:MigrationProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    instanceProfileArn = registerOutput<String>('instanceProfileArn');
    instanceProfileName = registerOutput<String>('instanceProfileName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schemaConversionApplicationAttributes = registerOutput<MigrationProjectSchemaConversionApplicationAttributes?>('schemaConversionApplicationAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrationProjectSchemaConversionApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceDataProviderDescriptors = registerOutput<List<MigrationProjectSourceDataProviderDescriptor>>('sourceDataProviderDescriptors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MigrationProjectSourceDataProviderDescriptor>(guardedValue, (value) => MigrationProjectSourceDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetDataProviderDescriptors = registerOutput<List<MigrationProjectTargetDataProviderDescriptor>>('targetDataProviderDescriptors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MigrationProjectTargetDataProviderDescriptor>(guardedValue, (value) => MigrationProjectTargetDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<MigrationProjectTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrationProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transformationRules = registerOutput<String?>('transformationRules');
  }

  /// Gets an existing [MigrationProject] resource's state with the given [name] and [id].
  static MigrationProject get(
    String name,
    pulumi.Input<String> id, {
    MigrationProjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MigrationProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MigrationProject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/migrationProject:MigrationProject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    instanceProfileArn = registerOutput<String>('instanceProfileArn');
    instanceProfileName = registerOutput<String>('instanceProfileName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schemaConversionApplicationAttributes = registerOutput<MigrationProjectSchemaConversionApplicationAttributes?>('schemaConversionApplicationAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrationProjectSchemaConversionApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceDataProviderDescriptors = registerOutput<List<MigrationProjectSourceDataProviderDescriptor>>('sourceDataProviderDescriptors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MigrationProjectSourceDataProviderDescriptor>(guardedValue, (value) => MigrationProjectSourceDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetDataProviderDescriptors = registerOutput<List<MigrationProjectTargetDataProviderDescriptor>>('targetDataProviderDescriptors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MigrationProjectTargetDataProviderDescriptor>(guardedValue, (value) => MigrationProjectTargetDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<MigrationProjectTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrationProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transformationRules = registerOutput<String?>('transformationRules');
  }

  /// Creates a typed reference to an existing [MigrationProject] resource.
  MigrationProject.reference(String urn)
    : super(
        'aws:dms/migrationProject:MigrationProject',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    instanceProfileArn = registerOutput<String>('instanceProfileArn');
    instanceProfileName = registerOutput<String>('instanceProfileName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schemaConversionApplicationAttributes = registerOutput<MigrationProjectSchemaConversionApplicationAttributes?>('schemaConversionApplicationAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrationProjectSchemaConversionApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceDataProviderDescriptors = registerOutput<List<MigrationProjectSourceDataProviderDescriptor>>('sourceDataProviderDescriptors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MigrationProjectSourceDataProviderDescriptor>(guardedValue, (value) => MigrationProjectSourceDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetDataProviderDescriptors = registerOutput<List<MigrationProjectTargetDataProviderDescriptor>>('targetDataProviderDescriptors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MigrationProjectTargetDataProviderDescriptor>(guardedValue, (value) => MigrationProjectTargetDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<MigrationProjectTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrationProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transformationRules = registerOutput<String?>('transformationRules');
  }
}
