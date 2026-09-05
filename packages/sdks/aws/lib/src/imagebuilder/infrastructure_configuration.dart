import 'package:pulumi/pulumi.dart' as pulumi;
import 'infrastructure_configuration_args.dart';
import 'infrastructure_configuration_instance_metadata_options.dart';
import 'infrastructure_configuration_logging.dart';
import 'infrastructure_configuration_placement.dart';
import 'infrastructure_configuration_state.dart';

/// Manages an Image Builder Infrastructure Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.imagebuilder.InfrastructureConfiguration("example", {
///     logging: {
///         s3Logs: {
///             s3BucketName: exampleAwsS3Bucket.bucket,
///             s3KeyPrefix: "logs",
///         },
///     },
///     description: "example description",
///     instanceProfileName: exampleAwsIamInstanceProfile.name,
///     instanceTypes: [
///         "t2.nano",
///         "t3.micro",
///     ],
///     keyPair: exampleAwsKeyPair.keyName,
///     name: "example",
///     securityGroupIds: [exampleAwsSecurityGroup.id],
///     snsTopicArn: exampleAwsSnsTopic.arn,
///     subnetId: main.id,
///     terminateInstanceOnFailure: true,
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.InfrastructureConfiguration("example",
///     logging={
///         "s3_logs": {
///             "s3_bucket_name": example_aws_s3_bucket["bucket"],
///             "s3_key_prefix": "logs",
///         },
///     },
///     description="example description",
///     instance_profile_name=example_aws_iam_instance_profile["name"],
///     instance_types=[
///         "t2.nano",
///         "t3.micro",
///     ],
///     key_pair=example_aws_key_pair["keyName"],
///     name="example",
///     security_group_ids=[example_aws_security_group["id"]],
///     sns_topic_arn=example_aws_sns_topic["arn"],
///     subnet_id=main["id"],
///     terminate_instance_on_failure=True,
///     tags={
///         "foo": "bar",
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
///     var example = new Aws.ImageBuilder.InfrastructureConfiguration("example", new()
///     {
///         Logging = new Aws.ImageBuilder.Inputs.InfrastructureConfigurationLoggingArgs
///         {
///             S3Logs = new Aws.ImageBuilder.Inputs.InfrastructureConfigurationLoggingS3LogsArgs
///             {
///                 S3BucketName = exampleAwsS3Bucket.Bucket,
///                 S3KeyPrefix = "logs",
///             },
///         },
///         Description = "example description",
///         InstanceProfileName = exampleAwsIamInstanceProfile.Name,
///         InstanceTypes = new[]
///         {
///             "t2.nano",
///             "t3.micro",
///         },
///         KeyPair = exampleAwsKeyPair.KeyName,
///         Name = "example",
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         SnsTopicArn = exampleAwsSnsTopic.Arn,
///         SubnetId = main.Id,
///         TerminateInstanceOnFailure = true,
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.NewInfrastructureConfiguration(ctx, "example", &imagebuilder.InfrastructureConfigurationArgs{
/// 			Logging: &imagebuilder.InfrastructureConfigurationLoggingArgs{
/// 				S3Logs: &imagebuilder.InfrastructureConfigurationLoggingS3LogsArgs{
/// 					S3BucketName: pulumi.Any(exampleAwsS3Bucket.Bucket),
/// 					S3KeyPrefix:  pulumi.String("logs"),
/// 				},
/// 			},
/// 			Description:         pulumi.String("example description"),
/// 			InstanceProfileName: pulumi.Any(exampleAwsIamInstanceProfile.Name),
/// 			InstanceTypes: pulumi.StringArray{
/// 				pulumi.String("t2.nano"),
/// 				pulumi.String("t3.micro"),
/// 			},
/// 			KeyPair: pulumi.Any(exampleAwsKeyPair.KeyName),
/// 			Name:    pulumi.String("example"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			SnsTopicArn:                pulumi.Any(exampleAwsSnsTopic.Arn),
/// 			SubnetId:                   pulumi.Any(main.Id),
/// 			TerminateInstanceOnFailure: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "aws_imagebuilder_infrastructureconfiguration" "example" {
///   logging = {
///     s3_logs = {
///       s3_bucket_name = exampleAwsS3Bucket.bucket
///       s3_key_prefix  = "logs"
///     }
///   }
///   description                   = "example description"
///   instance_profile_name         = exampleAwsIamInstanceProfile.name
///   instance_types                = ["t2.nano", "t3.micro"]
///   key_pair                      = exampleAwsKeyPair.keyName
///   name                          = "example"
///   security_group_ids            = [exampleAwsSecurityGroup.id]
///   sns_topic_arn                 = exampleAwsSnsTopic.arn
///   subnet_id                     = main.id
///   terminate_instance_on_failure = true
///   tags = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.InfrastructureConfiguration;
/// import com.pulumi.aws.imagebuilder.InfrastructureConfigurationArgs;
/// import com.pulumi.aws.imagebuilder.inputs.InfrastructureConfigurationLoggingArgs;
/// import com.pulumi.aws.imagebuilder.inputs.InfrastructureConfigurationLoggingS3LogsArgs;
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
///         var example = new InfrastructureConfiguration("example", InfrastructureConfigurationArgs.builder()
///             .logging(InfrastructureConfigurationLoggingArgs.builder()
///                 .s3Logs(InfrastructureConfigurationLoggingS3LogsArgs.builder()
///                     .s3BucketName(exampleAwsS3Bucket.bucket())
///                     .s3KeyPrefix("logs")
///                     .build())
///                 .build())
///             .description("example description")
///             .instanceProfileName(exampleAwsIamInstanceProfile.name())
///             .instanceTypes(
///                 "t2.nano",
///                 "t3.micro")
///             .keyPair(exampleAwsKeyPair.keyName())
///             .name("example")
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .snsTopicArn(exampleAwsSnsTopic.arn())
///             .subnetId(main.id())
///             .terminateInstanceOnFailure(true)
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:imagebuilder:InfrastructureConfiguration
///     properties:
///       logging:
///         s3Logs:
///           s3BucketName: ${exampleAwsS3Bucket.bucket}
///           s3KeyPrefix: logs
///       description: example description
///       instanceProfileName: ${exampleAwsIamInstanceProfile.name}
///       instanceTypes:
///         - t2.nano
///         - t3.micro
///       keyPair: ${exampleAwsKeyPair.keyName}
///       name: example
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       snsTopicArn: ${exampleAwsSnsTopic.arn}
///       subnetId: ${main.id}
///       terminateInstanceOnFailure: true
///       tags:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Image Builder infrastructure configuration.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.InfrastructureConfiguration` using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/infrastructureConfiguration:InfrastructureConfiguration example arn:aws:imagebuilder:us-east-1:123456789012:infrastructure-configuration/example
/// ```
class InfrastructureConfiguration extends pulumi.CustomResource {
  /// ARN of the configuration.
  late final pulumi.Output<String> arn;
  /// Date when the configuration was created.
  late final pulumi.Output<String> dateCreated;
  /// Date when the configuration was updated.
  late final pulumi.Output<String> dateUpdated;
  /// Description for the configuration.
  late final pulumi.Output<String?> description;
  /// Configuration block with instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances. Detailed below.
  late final pulumi.Output<InfrastructureConfigurationInstanceMetadataOptions?> instanceMetadataOptions;
  /// Name of IAM Instance Profile.
  late final pulumi.Output<String> instanceProfileName;
  /// Set of EC2 Instance Types.
  late final pulumi.Output<List<String>?> instanceTypes;
  /// Name of EC2 Key Pair.
  late final pulumi.Output<String?> keyPair;
  /// Configuration block with logging settings. Detailed below.
  late final pulumi.Output<InfrastructureConfigurationLogging?> logging;
  /// Name for the configuration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Configuration block with placement settings that define where the instances that are launched from your image will run. Detailed below.
  late final pulumi.Output<InfrastructureConfigurationPlacement?> placement;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags to assign to infrastructure created by the configuration.
  late final pulumi.Output<Map<String, String>?> resourceTags;
  /// Set of EC2 Security Group identifiers.
  late final pulumi.Output<List<String>?> securityGroupIds;
  /// ARN of SNS Topic.
  late final pulumi.Output<String?> snsTopicArn;
  /// EC2 Subnet identifier. Also requires `securityGroupIds` argument.
  late final pulumi.Output<String?> subnetId;
  /// Key-value map of resource tags to assign to the configuration. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Enable if the instance should be terminated when the pipeline fails. Defaults to `false`.
  late final pulumi.Output<bool?> terminateInstanceOnFailure;

  /// Creates a new [InfrastructureConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InfrastructureConfiguration]. {@macro pulumi_imagebuilder_infrastructure_configuration_infrastructure_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InfrastructureConfiguration(
    String name, {
    InfrastructureConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/infrastructureConfiguration:InfrastructureConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    dateCreated = registerOutput<String>('dateCreated');
    dateUpdated = registerOutput<String>('dateUpdated');
    description = registerOutput<String?>('description');
    instanceMetadataOptions = registerOutput<InfrastructureConfigurationInstanceMetadataOptions?>('instanceMetadataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureConfigurationInstanceMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceProfileName = registerOutput<String>('instanceProfileName');
    instanceTypes = registerOutput<List<String>?>('instanceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    keyPair = registerOutput<String?>('keyPair');
    logging = registerOutput<InfrastructureConfigurationLogging?>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureConfigurationLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    placement = registerOutput<InfrastructureConfigurationPlacement?>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureConfigurationPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    snsTopicArn = registerOutput<String?>('snsTopicArn');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    terminateInstanceOnFailure = registerOutput<bool?>('terminateInstanceOnFailure');
  }

  /// Gets an existing [InfrastructureConfiguration] resource's state with the given [name] and [id].
  static InfrastructureConfiguration get(
    String name,
    pulumi.Input<String> id, {
    InfrastructureConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InfrastructureConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InfrastructureConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/infrastructureConfiguration:InfrastructureConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    dateCreated = registerOutput<String>('dateCreated');
    dateUpdated = registerOutput<String>('dateUpdated');
    description = registerOutput<String?>('description');
    instanceMetadataOptions = registerOutput<InfrastructureConfigurationInstanceMetadataOptions?>('instanceMetadataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureConfigurationInstanceMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceProfileName = registerOutput<String>('instanceProfileName');
    instanceTypes = registerOutput<List<String>?>('instanceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    keyPair = registerOutput<String?>('keyPair');
    logging = registerOutput<InfrastructureConfigurationLogging?>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureConfigurationLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    placement = registerOutput<InfrastructureConfigurationPlacement?>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureConfigurationPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    snsTopicArn = registerOutput<String?>('snsTopicArn');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    terminateInstanceOnFailure = registerOutput<bool?>('terminateInstanceOnFailure');
  }

  /// Creates a typed reference to an existing [InfrastructureConfiguration] resource.
  InfrastructureConfiguration.reference(String urn)
    : super(
        'aws:imagebuilder/infrastructureConfiguration:InfrastructureConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    dateCreated = registerOutput<String>('dateCreated');
    dateUpdated = registerOutput<String>('dateUpdated');
    description = registerOutput<String?>('description');
    instanceMetadataOptions = registerOutput<InfrastructureConfigurationInstanceMetadataOptions?>('instanceMetadataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureConfigurationInstanceMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceProfileName = registerOutput<String>('instanceProfileName');
    instanceTypes = registerOutput<List<String>?>('instanceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    keyPair = registerOutput<String?>('keyPair');
    logging = registerOutput<InfrastructureConfigurationLogging?>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureConfigurationLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    placement = registerOutput<InfrastructureConfigurationPlacement?>('placement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureConfigurationPlacement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    snsTopicArn = registerOutput<String?>('snsTopicArn');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    terminateInstanceOnFailure = registerOutput<bool?>('terminateInstanceOnFailure');
  }
}
