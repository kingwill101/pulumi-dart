// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'infrastructure_configuration_instance_metadata_options.dart';
import 'infrastructure_configuration_logging.dart';
import 'infrastructure_configuration_placement.dart';

/// Input properties used for looking up and filtering InfrastructureConfiguration resources.
class InfrastructureConfigurationState {
  /// Amazon Resource Name (ARN) of the configuration.
  final pulumi.Input<String>? arn;
  /// Date when the configuration was created.
  final pulumi.Input<String>? dateCreated;
  /// Date when the configuration was updated.
  final pulumi.Input<String>? dateUpdated;
  /// Description for the configuration.
  final pulumi.Input<String>? description;
  /// Configuration block with instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances. Detailed below.
  final pulumi.Input<InfrastructureConfigurationInstanceMetadataOptions>? instanceMetadataOptions;
  /// Name of IAM Instance Profile.
  final pulumi.Input<String>? instanceProfileName;
  /// Set of EC2 Instance Types.
  final pulumi.Input<List<String>>? instanceTypes;
  /// Name of EC2 Key Pair.
  final pulumi.Input<String>? keyPair;
  /// Configuration block with logging settings. Detailed below.
  final pulumi.Input<InfrastructureConfigurationLogging>? logging;
  /// Name for the configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Configuration block with placement settings that define where the instances that are launched from your image will run. Detailed below.
  final pulumi.Input<InfrastructureConfigurationPlacement>? placement;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags to assign to infrastructure created by the configuration.
  final pulumi.Input<Map<String, String>>? resourceTags;
  /// Set of EC2 Security Group identifiers.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Amazon Resource Name (ARN) of SNS Topic.
  final pulumi.Input<String>? snsTopicArn;
  /// EC2 Subnet identifier. Also requires `security_group_ids` argument.
  final pulumi.Input<String>? subnetId;
  /// Key-value map of resource tags to assign to the configuration. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Enable if the instance should be terminated when the pipeline fails. Defaults to `false`.
  final pulumi.Input<bool>? terminateInstanceOnFailure;

  /// Creates a new [InfrastructureConfigurationState].
  /// [arn] Amazon Resource Name (ARN) of the configuration.
  /// [dateCreated] Date when the configuration was created.
  /// [dateUpdated] Date when the configuration was updated.
  /// [description] Description for the configuration.
  /// [instanceMetadataOptions] Configuration block with instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances. Detailed below.
  /// [instanceProfileName] Name of IAM Instance Profile.
  /// [instanceTypes] Set of EC2 Instance Types.
  /// [keyPair] Name of EC2 Key Pair.
  /// [logging] Configuration block with logging settings. Detailed below.
  /// [name] Name for the configuration.
  /// [placement] Configuration block with placement settings that define where the instances that are launched from your image will run. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTags] Key-value map of resource tags to assign to infrastructure created by the configuration.
  /// [securityGroupIds] Set of EC2 Security Group identifiers.
  /// [snsTopicArn] Amazon Resource Name (ARN) of SNS Topic.
  /// [subnetId] EC2 Subnet identifier. Also requires `security_group_ids` argument.
  /// [tags] Key-value map of resource tags to assign to the configuration. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [terminateInstanceOnFailure] Enable if the instance should be terminated when the pipeline fails. Defaults to `false`.
  InfrastructureConfigurationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? dateCreated,
    pulumi.Output<String>? dateUpdated,
    pulumi.Output<String>? description,
    pulumi.Output<InfrastructureConfigurationInstanceMetadataOptions>? instanceMetadataOptions,
    pulumi.Output<String>? instanceProfileName,
    pulumi.Output<List<String>>? instanceTypes,
    pulumi.Output<String>? keyPair,
    pulumi.Output<InfrastructureConfigurationLogging>? logging,
    pulumi.Output<String>? name,
    pulumi.Output<InfrastructureConfigurationPlacement>? placement,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? resourceTags,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? snsTopicArn,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<bool>? terminateInstanceOnFailure,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dateCreated = pulumi.Input.asOptionalInput<String>(dateCreated),
      dateUpdated = pulumi.Input.asOptionalInput<String>(dateUpdated),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceMetadataOptions = pulumi.Input.asOptionalInput<InfrastructureConfigurationInstanceMetadataOptions>(instanceMetadataOptions),
      instanceProfileName = pulumi.Input.asOptionalInput<String>(instanceProfileName),
      instanceTypes = pulumi.Input.asOptionalInput<List<String>>(instanceTypes),
      keyPair = pulumi.Input.asOptionalInput<String>(keyPair),
      logging = pulumi.Input.asOptionalInput<InfrastructureConfigurationLogging>(logging),
      name = pulumi.Input.asOptionalInput<String>(name),
      placement = pulumi.Input.asOptionalInput<InfrastructureConfigurationPlacement>(placement),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceTags = pulumi.Input.asOptionalInput<Map<String, String>>(resourceTags),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      snsTopicArn = pulumi.Input.asOptionalInput<String>(snsTopicArn),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      terminateInstanceOnFailure = pulumi.Input.asOptionalInput<bool>(terminateInstanceOnFailure);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dateCreated': ?dateCreated,
      'dateUpdated': ?dateUpdated,
      'description': ?description,
      'instanceMetadataOptions': ?pulumi.Input.mapOptionalInputValue<InfrastructureConfigurationInstanceMetadataOptions, Map<String, dynamic>>(instanceMetadataOptions, (value) => value.toMap()),
      'instanceProfileName': ?instanceProfileName,
      'instanceTypes': ?instanceTypes,
      'keyPair': ?keyPair,
      'logging': ?pulumi.Input.mapOptionalInputValue<InfrastructureConfigurationLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'name': ?name,
      'placement': ?pulumi.Input.mapOptionalInputValue<InfrastructureConfigurationPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'region': ?region,
      'resourceTags': ?resourceTags,
      'securityGroupIds': ?securityGroupIds,
      'snsTopicArn': ?snsTopicArn,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'terminateInstanceOnFailure': ?terminateInstanceOnFailure,
    };
  }

  factory InfrastructureConfigurationState.fromMap(Map<String, dynamic> map) {
    return InfrastructureConfigurationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dateCreated: map['dateCreated'] == null ? null : pulumi.Output.create<String>(map['dateCreated'] as String),
      dateUpdated: map['dateUpdated'] == null ? null : pulumi.Output.create<String>(map['dateUpdated'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceMetadataOptions: map['instanceMetadataOptions'] == null ? null : pulumi.Output.create<InfrastructureConfigurationInstanceMetadataOptions>(InfrastructureConfigurationInstanceMetadataOptions.fromMap((map['instanceMetadataOptions'] as Map).cast<String, dynamic>())),
      instanceProfileName: map['instanceProfileName'] == null ? null : pulumi.Output.create<String>(map['instanceProfileName'] as String),
      instanceTypes: map['instanceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['instanceTypes'] as List).cast<String>()),
      keyPair: map['keyPair'] == null ? null : pulumi.Output.create<String>(map['keyPair'] as String),
      logging: map['logging'] == null ? null : pulumi.Output.create<InfrastructureConfigurationLogging>(InfrastructureConfigurationLogging.fromMap((map['logging'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      placement: map['placement'] == null ? null : pulumi.Output.create<InfrastructureConfigurationPlacement>(InfrastructureConfigurationPlacement.fromMap((map['placement'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceTags: map['resourceTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['resourceTags'] as Map).cast<String, String>()),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      snsTopicArn: map['snsTopicArn'] == null ? null : pulumi.Output.create<String>(map['snsTopicArn'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      terminateInstanceOnFailure: map['terminateInstanceOnFailure'] == null ? null : pulumi.Output.create<bool>(map['terminateInstanceOnFailure'] as bool),
    );
  }
}

