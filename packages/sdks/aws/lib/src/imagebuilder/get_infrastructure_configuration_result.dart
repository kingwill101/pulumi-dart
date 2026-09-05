// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_infrastructure_configuration_instance_metadata_option.dart';
import 'get_infrastructure_configuration_logging.dart';
import 'get_infrastructure_configuration_placement.dart';

/// Result data returned by getInfrastructureConfiguration.
class GetInfrastructureConfigurationResult {
  final String? arn;
  /// Date the infrastructure configuration was updated.
  final String? dateCreated;
  final String? dateUpdated;
  /// Description of the infrastructure configuration.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.
  final List<GetInfrastructureConfigurationInstanceMetadataOption>? instanceMetadataOptions;
  /// Name of the IAM Instance Profile associated with the configuration.
  final String? instanceProfileName;
  /// Set of EC2 Instance Types associated with the configuration.
  final List<String>? instanceTypes;
  /// Name of the EC2 Key Pair associated with the configuration.
  final String? keyPair;
  /// Nested list of logging settings.
  final List<GetInfrastructureConfigurationLogging>? loggings;
  /// Name of the infrastructure configuration.
  final String? name;
  /// Placement settings that define where the instances that are launched from your image will run.
  final List<GetInfrastructureConfigurationPlacement>? placements;
  final String? region;
  /// Key-value map of resource tags for the infrastructure created by the infrastructure configuration.
  final Map<String, String>? resourceTags;
  /// Set of EC2 Security Group identifiers associated with the configuration.
  final List<String>? securityGroupIds;
  /// ARN of the SNS Topic associated with the configuration.
  final String? snsTopicArn;
  /// Identifier of the EC2 Subnet associated with the configuration.
  final String? subnetId;
  /// Key-value map of resource tags for the infrastructure configuration.
  final Map<String, String>? tags;
  /// Whether instances are terminated on failure.
  final bool? terminateInstanceOnFailure;

  /// Creates a new [GetInfrastructureConfigurationResult].
  /// [arn] Optional.
  /// [dateCreated] Date the infrastructure configuration was updated.
  /// [dateUpdated] Optional.
  /// [description] Description of the infrastructure configuration.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceMetadataOptions] Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.
  /// [instanceProfileName] Name of the IAM Instance Profile associated with the configuration.
  /// [instanceTypes] Set of EC2 Instance Types associated with the configuration.
  /// [keyPair] Name of the EC2 Key Pair associated with the configuration.
  /// [loggings] Nested list of logging settings.
  /// [name] Name of the infrastructure configuration.
  /// [placements] Placement settings that define where the instances that are launched from your image will run.
  /// [region] Optional.
  /// [resourceTags] Key-value map of resource tags for the infrastructure created by the infrastructure configuration.
  /// [securityGroupIds] Set of EC2 Security Group identifiers associated with the configuration.
  /// [snsTopicArn] ARN of the SNS Topic associated with the configuration.
  /// [subnetId] Identifier of the EC2 Subnet associated with the configuration.
  /// [tags] Key-value map of resource tags for the infrastructure configuration.
  /// [terminateInstanceOnFailure] Whether instances are terminated on failure.
  const GetInfrastructureConfigurationResult({
    this.arn,
    this.dateCreated,
    this.dateUpdated,
    this.description,
    this.id,
    this.instanceMetadataOptions,
    this.instanceProfileName,
    this.instanceTypes,
    this.keyPair,
    this.loggings,
    this.name,
    this.placements,
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
      'arn': ?arn,
      'dateCreated': ?dateCreated,
      'dateUpdated': ?dateUpdated,
      'description': ?description,
      'id': ?id,
      'instanceMetadataOptions': ?(() { final guardedValue = instanceMetadataOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInfrastructureConfigurationInstanceMetadataOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instanceProfileName': ?instanceProfileName,
      'instanceTypes': ?instanceTypes,
      'keyPair': ?keyPair,
      'loggings': ?(() { final guardedValue = loggings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInfrastructureConfigurationLogging, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'placements': ?(() { final guardedValue = placements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInfrastructureConfigurationPlacement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'resourceTags': ?resourceTags,
      'securityGroupIds': ?securityGroupIds,
      'snsTopicArn': ?snsTopicArn,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'terminateInstanceOnFailure': ?terminateInstanceOnFailure,
    };
  }

  factory GetInfrastructureConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateCreated: (() { final guardedValue = map['dateCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateUpdated: (() { final guardedValue = map['dateUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceMetadataOptions: (() { final guardedValue = map['instanceMetadataOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInfrastructureConfigurationInstanceMetadataOption>(guardedValue, (value) => GetInfrastructureConfigurationInstanceMetadataOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceProfileName: (() { final guardedValue = map['instanceProfileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceTypes: (() { final guardedValue = map['instanceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      keyPair: (() { final guardedValue = map['keyPair']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggings: (() { final guardedValue = map['loggings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInfrastructureConfigurationLogging>(guardedValue, (value) => GetInfrastructureConfigurationLogging.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      placements: (() { final guardedValue = map['placements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInfrastructureConfigurationPlacement>(guardedValue, (value) => GetInfrastructureConfigurationPlacement.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      terminateInstanceOnFailure: (() { final guardedValue = map['terminateInstanceOnFailure']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
