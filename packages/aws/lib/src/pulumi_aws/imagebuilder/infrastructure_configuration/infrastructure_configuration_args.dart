// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../infrastructure_configuration_instance_metadata_options/infrastructure_configuration_instance_metadata_options.dart';
import '../infrastructure_configuration_logging/infrastructure_configuration_logging.dart';
import '../infrastructure_configuration_placement/infrastructure_configuration_placement.dart';

/// The set of arguments for InfrastructureConfiguration.
class InfrastructureConfigurationArgs {
  /// Description for the configuration.
  final Input<String>? description;

  /// Configuration block with instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances. Detailed below.
  final Input<InfrastructureConfigurationInstanceMetadataOptions>?
      instanceMetadataOptions;

  /// Name of IAM Instance Profile.
  final Input<String> instanceProfileName;

  /// Set of EC2 Instance Types.
  final Input<List<String>>? instanceTypes;

  /// Name of EC2 Key Pair.
  final Input<String>? keyPair;

  /// Configuration block with logging settings. Detailed below.
  final Input<InfrastructureConfigurationLogging>? logging;

  /// Name for the configuration.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Configuration block with placement settings that define where the instances that are launched from your image will run. Detailed below.
  final Input<InfrastructureConfigurationPlacement>? placement;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags to assign to infrastructure created by the configuration.
  final Input<Map<String, String>>? resourceTags;

  /// Set of EC2 Security Group identifiers.
  final Input<List<String>>? securityGroupIds;

  /// Amazon Resource Name (ARN) of SNS Topic.
  final Input<String>? snsTopicArn;

  /// EC2 Subnet identifier. Also requires `security_group_ids` argument.
  final Input<String>? subnetId;

  /// Key-value map of resource tags to assign to the configuration. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Enable if the instance should be terminated when the pipeline fails. Defaults to `false`.
  final Input<bool>? terminateInstanceOnFailure;

  InfrastructureConfigurationArgs({
    this.description,
    this.instanceMetadataOptions,
    required this.instanceProfileName,
    this.instanceTypes,
    this.keyPair,
    this.logging,
    this.name,
    this.placement,
    this.region,
    this.resourceTags,
    this.securityGroupIds,
    this.snsTopicArn,
    this.subnetId,
    this.tags,
    this.terminateInstanceOnFailure,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final instanceMetadataOptionsValue = instanceMetadataOptions;
    if (instanceMetadataOptionsValue != null) {
      map['instanceMetadataOptions'] = Input.mapOptionalInputValue<
              InfrastructureConfigurationInstanceMetadataOptions,
              Map<String, dynamic>>(
          instanceMetadataOptionsValue, (value) => value.toMap());
    }
    map['instanceProfileName'] = instanceProfileName;
    final instanceTypesValue = instanceTypes;
    if (instanceTypesValue != null) {
      map['instanceTypes'] = instanceTypesValue;
    }
    final keyPairValue = keyPair;
    if (keyPairValue != null) {
      map['keyPair'] = keyPairValue;
    }
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] = Input.mapOptionalInputValue<
          InfrastructureConfigurationLogging,
          Map<String, dynamic>>(loggingValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final placementValue = placement;
    if (placementValue != null) {
      map['placement'] = Input.mapOptionalInputValue<
          InfrastructureConfigurationPlacement,
          Map<String, dynamic>>(placementValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = resourceTagsValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final snsTopicArnValue = snsTopicArn;
    if (snsTopicArnValue != null) {
      map['snsTopicArn'] = snsTopicArnValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final terminateInstanceOnFailureValue = terminateInstanceOnFailure;
    if (terminateInstanceOnFailureValue != null) {
      map['terminateInstanceOnFailure'] = terminateInstanceOnFailureValue;
    }
    return map;
  }

  factory InfrastructureConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return InfrastructureConfigurationArgs(
      description: Input.asOptionalInput<String>(map['description']),
      instanceMetadataOptions: Input.asOptionalInput<
              InfrastructureConfigurationInstanceMetadataOptions>(
          map['instanceMetadataOptions']),
      instanceProfileName: Input.asInput<String>(map['instanceProfileName']),
      instanceTypes: Input.asOptionalInput<List<String>>(map['instanceTypes']),
      keyPair: Input.asOptionalInput<String>(map['keyPair']),
      logging: Input.asOptionalInput<InfrastructureConfigurationLogging>(
          map['logging']),
      name: Input.asOptionalInput<String>(map['name']),
      placement: Input.asOptionalInput<InfrastructureConfigurationPlacement>(
          map['placement']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceTags:
          Input.asOptionalInput<Map<String, String>>(map['resourceTags']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      snsTopicArn: Input.asOptionalInput<String>(map['snsTopicArn']),
      subnetId: Input.asOptionalInput<String>(map['subnetId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      terminateInstanceOnFailure:
          Input.asOptionalInput<bool>(map['terminateInstanceOnFailure']),
    );
  }
}
