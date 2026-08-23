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
  final pulumi.Input<InfrastructureConfigurationInstanceMetadataOptions>? instanceMetadataOptions;
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
  /// EC2 Subnet identifier. Also requires `securityGroupIds` argument.
  final pulumi.Input<String>? subnetId;
  /// Key-value map of resource tags to assign to the configuration. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [subnetId] EC2 Subnet identifier. Also requires `securityGroupIds` argument.
  /// [tags] Key-value map of resource tags to assign to the configuration. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [terminateInstanceOnFailure] Enable if the instance should be terminated when the pipeline fails. Defaults to `false`.
  const InfrastructureConfigurationArgs({
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
    return <String, dynamic>{
      'description': ?description,
      'instanceMetadataOptions': ?pulumi.Input.mapOptionalInputValue<InfrastructureConfigurationInstanceMetadataOptions, Map<String, dynamic>>(instanceMetadataOptions, (value) => value.toMap()),
      'instanceProfileName': instanceProfileName,
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
      'terminateInstanceOnFailure': ?terminateInstanceOnFailure,
    };
  }

  factory InfrastructureConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return InfrastructureConfigurationArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceMetadataOptions: (() { final guardedValue = map['instanceMetadataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InfrastructureConfigurationInstanceMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceProfileName: pulumi.Input.fromValue(map['instanceProfileName'] as String),
      instanceTypes: (() { final guardedValue = map['instanceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyPair: (() { final guardedValue = map['keyPair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InfrastructureConfigurationLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InfrastructureConfigurationPlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      terminateInstanceOnFailure: (() { final guardedValue = map['terminateInstanceOnFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
