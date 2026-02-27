import 'package:pulumi/pulumi.dart';
import '../infrastructure_configuration_instance_metadata_options/infrastructure_configuration_instance_metadata_options.dart';
import '../infrastructure_configuration_logging/infrastructure_configuration_logging.dart';
import '../infrastructure_configuration_placement/infrastructure_configuration_placement.dart';
import 'infrastructure_configuration_args.dart';

/// Manages an Image Builder Infrastructure Configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder infrastructure configuration.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.InfrastructureConfiguration` using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/infrastructureConfiguration:InfrastructureConfiguration example arn:aws:imagebuilder:us-east-1:123456789012:infrastructure-configuration/example
/// ```
class InfrastructureConfiguration extends CustomResource {
  /// Amazon Resource Name (ARN) of the configuration.
  late final Output<String> arn;

  /// Date when the configuration was created.
  late final Output<String> dateCreated;

  /// Date when the configuration was updated.
  late final Output<String> dateUpdated;

  /// Description for the configuration.
  late final Output<String?> description;

  /// Configuration block with instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances. Detailed below.
  late final Output<InfrastructureConfigurationInstanceMetadataOptions?>
      instanceMetadataOptions;

  /// Name of IAM Instance Profile.
  late final Output<String> instanceProfileName;

  /// Set of EC2 Instance Types.
  late final Output<List<String>?> instanceTypes;

  /// Name of EC2 Key Pair.
  late final Output<String?> keyPair;

  /// Configuration block with logging settings. Detailed below.
  late final Output<InfrastructureConfigurationLogging?> logging;

  /// Name for the configuration.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Configuration block with placement settings that define where the instances that are launched from your image will run. Detailed below.
  late final Output<InfrastructureConfigurationPlacement?> placement;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags to assign to infrastructure created by the configuration.
  late final Output<Map<String, String>?> resourceTags;

  /// Set of EC2 Security Group identifiers.
  late final Output<List<String>?> securityGroupIds;

  /// Amazon Resource Name (ARN) of SNS Topic.
  late final Output<String?> snsTopicArn;

  /// EC2 Subnet identifier. Also requires `security_group_ids` argument.
  late final Output<String?> subnetId;

  /// Key-value map of resource tags to assign to the configuration. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Enable if the instance should be terminated when the pipeline fails. Defaults to `false`.
  late final Output<bool?> terminateInstanceOnFailure;

  InfrastructureConfiguration(
    String name, {
    InfrastructureConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/infrastructureConfiguration:InfrastructureConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.dateUpdated = registerOutput<String>('dateUpdated');
    this.description = registerOutput<String?>('description');
    this.instanceMetadataOptions =
        registerOutput<InfrastructureConfigurationInstanceMetadataOptions?>(
            'instanceMetadataOptions');
    this.instanceProfileName = registerOutput<String>('instanceProfileName');
    this.instanceTypes = registerOutput<List<String>?>('instanceTypes');
    this.keyPair = registerOutput<String?>('keyPair');
    this.logging =
        registerOutput<InfrastructureConfigurationLogging?>('logging');
    this.name = registerOutput<String>('name');
    this.placement =
        registerOutput<InfrastructureConfigurationPlacement?>('placement');
    this.region = registerOutput<String>('region');
    this.resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.snsTopicArn = registerOutput<String?>('snsTopicArn');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.terminateInstanceOnFailure =
        registerOutput<bool?>('terminateInstanceOnFailure');
  }
}
