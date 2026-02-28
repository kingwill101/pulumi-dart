// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'infrastructure_configuration_instance_metadata_options.dart';
import 'infrastructure_configuration_logging.dart';
import 'infrastructure_configuration_placement.dart';

/// {@template pulumi_imagebuilder_infrastructure_configuration_infrastructure_configuration_args_doc}
/// The set of arguments for InfrastructureConfiguration.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_infrastructure_configuration_infrastructure_configuration_args_doc}
class InfrastructureConfigurationArgs {
  /// Description for the configuration.
  final pulumi.Input<String>? description;

  /// Configuration block with instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances. Detailed below.
  final pulumi.Input<InfrastructureConfigurationInstanceMetadataOptions>?
      instanceMetadataOptions;

  /// Name of IAM Instance Profile.
  final pulumi.Input<String> instanceProfileName;

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

  /// Enable if the instance should be terminated when the pipeline fails. Defaults to `false`.
  final pulumi.Input<bool>? terminateInstanceOnFailure;

  /// Creates a new [InfrastructureConfigurationArgs].
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
  /// [terminateInstanceOnFailure] Enable if the instance should be terminated when the pipeline fails. Defaults to `false`.
  InfrastructureConfigurationArgs({
    String? description,
    InfrastructureConfigurationInstanceMetadataOptions? instanceMetadataOptions,
    required String instanceProfileName,
    List<String>? instanceTypes,
    String? keyPair,
    InfrastructureConfigurationLogging? logging,
    String? name,
    InfrastructureConfigurationPlacement? placement,
    String? region,
    Map<String, String>? resourceTags,
    List<String>? securityGroupIds,
    String? snsTopicArn,
    String? subnetId,
    Map<String, String>? tags,
    bool? terminateInstanceOnFailure,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        instanceMetadataOptions = pulumi.Input.asOptionalInput<
                InfrastructureConfigurationInstanceMetadataOptions>(
            instanceMetadataOptions),
        instanceProfileName = pulumi.Input.asInput<String>(instanceProfileName),
        instanceTypes =
            pulumi.Input.asOptionalInput<List<String>>(instanceTypes),
        keyPair = pulumi.Input.asOptionalInput<String>(keyPair),
        logging =
            pulumi.Input.asOptionalInput<InfrastructureConfigurationLogging>(
                logging),
        name = pulumi.Input.asOptionalInput<String>(name),
        placement =
            pulumi.Input.asOptionalInput<InfrastructureConfigurationPlacement>(
                placement),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceTags =
            pulumi.Input.asOptionalInput<Map<String, String>>(resourceTags),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        snsTopicArn = pulumi.Input.asOptionalInput<String>(snsTopicArn),
        subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        terminateInstanceOnFailure =
            pulumi.Input.asOptionalInput<bool>(terminateInstanceOnFailure);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final instanceMetadataOptionsValue = instanceMetadataOptions;
    if (instanceMetadataOptionsValue != null) {
      map['instanceMetadataOptions'] = pulumi.Input.mapOptionalInputValue<
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
      map['logging'] = pulumi.Input.mapOptionalInputValue<
          InfrastructureConfigurationLogging,
          Map<String, dynamic>>(loggingValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final placementValue = placement;
    if (placementValue != null) {
      map['placement'] = pulumi.Input.mapOptionalInputValue<
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
      description:
          map['description'] == null ? null : map['description'] as String,
      instanceMetadataOptions: map['instanceMetadataOptions'] == null
          ? null
          : InfrastructureConfigurationInstanceMetadataOptions.fromMap(
              (map['instanceMetadataOptions'] as Map).cast<String, dynamic>()),
      instanceProfileName: map['instanceProfileName'] as String,
      instanceTypes: map['instanceTypes'] == null
          ? null
          : (map['instanceTypes'] as List).cast<String>(),
      keyPair: map['keyPair'] == null ? null : map['keyPair'] as String,
      logging: map['logging'] == null
          ? null
          : InfrastructureConfigurationLogging.fromMap(
              (map['logging'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      placement: map['placement'] == null
          ? null
          : InfrastructureConfigurationPlacement.fromMap(
              (map['placement'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      resourceTags: map['resourceTags'] == null
          ? null
          : (map['resourceTags'] as Map).cast<String, String>(),
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      snsTopicArn:
          map['snsTopicArn'] == null ? null : map['snsTopicArn'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      terminateInstanceOnFailure: map['terminateInstanceOnFailure'] == null
          ? null
          : map['terminateInstanceOnFailure'] as bool,
    );
  }
}
