// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_infrastructure_configuration_instance_metadata_option.dart';
import 'get_infrastructure_configuration_logging.dart';
import 'get_infrastructure_configuration_placement.dart';

/// Result data returned by getInfrastructureConfiguration.
class GetInfrastructureConfigurationResult {
  final String arn;
  /// Date the infrastructure configuration was updated.
  final String dateCreated;
  final String dateUpdated;
  /// Description of the infrastructure configuration.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.
  final List<GetInfrastructureConfigurationInstanceMetadataOption> instanceMetadataOptions;
  /// Name of the IAM Instance Profile associated with the configuration.
  final String instanceProfileName;
  /// Set of EC2 Instance Types associated with the configuration.
  final List<String> instanceTypes;
  /// Name of the EC2 Key Pair associated with the configuration.
  final String keyPair;
  /// Nested list of logging settings.
  final List<GetInfrastructureConfigurationLogging> loggings;
  /// Name of the infrastructure configuration.
  final String name;
  /// Placement settings that define where the instances that are launched from your image will run.
  final List<GetInfrastructureConfigurationPlacement> placements;
  final String region;
  /// Key-value map of resource tags for the infrastructure created by the infrastructure configuration.
  final Map<String, String> resourceTags;
  /// Set of EC2 Security Group identifiers associated with the configuration.
  final List<String> securityGroupIds;
  /// ARN of the SNS Topic associated with the configuration.
  final String snsTopicArn;
  /// Identifier of the EC2 Subnet associated with the configuration.
  final String subnetId;
  /// Key-value map of resource tags for the infrastructure configuration.
  final Map<String, String> tags;
  /// Whether instances are terminated on failure.
  final bool terminateInstanceOnFailure;

  /// Creates a new [GetInfrastructureConfigurationResult].
  /// [arn] Required.
  /// [dateCreated] Date the infrastructure configuration was updated.
  /// [dateUpdated] Required.
  /// [description] Description of the infrastructure configuration.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceMetadataOptions] Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.
  /// [instanceProfileName] Name of the IAM Instance Profile associated with the configuration.
  /// [instanceTypes] Set of EC2 Instance Types associated with the configuration.
  /// [keyPair] Name of the EC2 Key Pair associated with the configuration.
  /// [loggings] Nested list of logging settings.
  /// [name] Name of the infrastructure configuration.
  /// [placements] Placement settings that define where the instances that are launched from your image will run.
  /// [region] Required.
  /// [resourceTags] Key-value map of resource tags for the infrastructure created by the infrastructure configuration.
  /// [securityGroupIds] Set of EC2 Security Group identifiers associated with the configuration.
  /// [snsTopicArn] ARN of the SNS Topic associated with the configuration.
  /// [subnetId] Identifier of the EC2 Subnet associated with the configuration.
  /// [tags] Key-value map of resource tags for the infrastructure configuration.
  /// [terminateInstanceOnFailure] Whether instances are terminated on failure.
  GetInfrastructureConfigurationResult({
    required this.arn,
    required this.dateCreated,
    required this.dateUpdated,
    required this.description,
    required this.id,
    required this.instanceMetadataOptions,
    required this.instanceProfileName,
    required this.instanceTypes,
    required this.keyPair,
    required this.loggings,
    required this.name,
    required this.placements,
    required this.region,
    required this.resourceTags,
    required this.securityGroupIds,
    required this.snsTopicArn,
    required this.subnetId,
    required this.tags,
    required this.terminateInstanceOnFailure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'dateCreated': dateCreated,
      'dateUpdated': dateUpdated,
      'description': description,
      'id': id,
      'instanceMetadataOptions': pulumi.Input.encodeList<GetInfrastructureConfigurationInstanceMetadataOption, Map<String, dynamic>>(instanceMetadataOptions, (value) => value.toMap()),
      'instanceProfileName': instanceProfileName,
      'instanceTypes': instanceTypes,
      'keyPair': keyPair,
      'loggings': pulumi.Input.encodeList<GetInfrastructureConfigurationLogging, Map<String, dynamic>>(loggings, (value) => value.toMap()),
      'name': name,
      'placements': pulumi.Input.encodeList<GetInfrastructureConfigurationPlacement, Map<String, dynamic>>(placements, (value) => value.toMap()),
      'region': region,
      'resourceTags': resourceTags,
      'securityGroupIds': securityGroupIds,
      'snsTopicArn': snsTopicArn,
      'subnetId': subnetId,
      'tags': tags,
      'terminateInstanceOnFailure': terminateInstanceOnFailure,
    };
  }

  factory GetInfrastructureConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationResult(
      arn: map['arn'] as String,
      dateCreated: map['dateCreated'] as String,
      dateUpdated: map['dateUpdated'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceMetadataOptions: pulumi.Input.decodeList<GetInfrastructureConfigurationInstanceMetadataOption>(map['instanceMetadataOptions'], (value) => GetInfrastructureConfigurationInstanceMetadataOption.fromMap((value as Map).cast<String, dynamic>())),
      instanceProfileName: map['instanceProfileName'] as String,
      instanceTypes: (map['instanceTypes'] as List).cast<String>(),
      keyPair: map['keyPair'] as String,
      loggings: pulumi.Input.decodeList<GetInfrastructureConfigurationLogging>(map['loggings'], (value) => GetInfrastructureConfigurationLogging.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      placements: pulumi.Input.decodeList<GetInfrastructureConfigurationPlacement>(map['placements'], (value) => GetInfrastructureConfigurationPlacement.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      resourceTags: (map['resourceTags'] as Map).cast<String, String>(),
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      snsTopicArn: map['snsTopicArn'] as String,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      terminateInstanceOnFailure: map['terminateInstanceOnFailure'] as bool,
    );
  }
}

