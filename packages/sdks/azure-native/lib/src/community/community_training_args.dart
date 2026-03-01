// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_configuration_properties.dart';
import 'sku.dart';

/// {@template pulumi_community_community_training_args_doc}
/// The set of arguments for CommunityTraining.
/// {@endtemplate}
/// {@macro pulumi_community_community_training_args_doc}
class CommunityTrainingArgs {
  /// The name of the Community Training Resource
  final pulumi.Input<String>? communityTrainingName;
  /// To indicate whether the Community Training instance has Disaster Recovery enabled
  final pulumi.Input<bool> disasterRecoveryEnabled;
  /// The identity configuration of the Community Training resource
  final pulumi.Input<IdentityConfigurationProperties> identityConfiguration;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The email address of the portal admin
  final pulumi.Input<String> portalAdminEmailAddress;
  /// The portal name (website name) of the Community Training instance
  final pulumi.Input<String> portalName;
  /// The email address of the portal owner. Will be used as the primary contact
  final pulumi.Input<String> portalOwnerEmailAddress;
  /// The organization name of the portal owner
  final pulumi.Input<String> portalOwnerOrganizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// To indicate whether the Community Training instance has Zone Redundancy enabled
  final pulumi.Input<bool> zoneRedundancyEnabled;

  /// Creates a new [CommunityTrainingArgs].
  /// [communityTrainingName] The name of the Community Training Resource
  /// [disasterRecoveryEnabled] To indicate whether the Community Training instance has Disaster Recovery enabled
  /// [identityConfiguration] The identity configuration of the Community Training resource
  /// [location] The geo-location where the resource lives
  /// [portalAdminEmailAddress] The email address of the portal admin
  /// [portalName] The portal name (website name) of the Community Training instance
  /// [portalOwnerEmailAddress] The email address of the portal owner. Will be used as the primary contact
  /// [portalOwnerOrganizationName] The organization name of the portal owner
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU (Stock Keeping Unit) assigned to this resource.
  /// [tags] Resource tags.
  /// [zoneRedundancyEnabled] To indicate whether the Community Training instance has Zone Redundancy enabled
  CommunityTrainingArgs({
    pulumi.Output<String>? communityTrainingName,
    required pulumi.Output<bool> disasterRecoveryEnabled,
    required pulumi.Output<IdentityConfigurationProperties> identityConfiguration,
    pulumi.Output<String>? location,
    required pulumi.Output<String> portalAdminEmailAddress,
    required pulumi.Output<String> portalName,
    required pulumi.Output<String> portalOwnerEmailAddress,
    required pulumi.Output<String> portalOwnerOrganizationName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<bool> zoneRedundancyEnabled,
  }) :
      communityTrainingName = pulumi.Input.asOptionalInput<String>(communityTrainingName),
      disasterRecoveryEnabled = pulumi.Input.asInput<bool>(disasterRecoveryEnabled),
      identityConfiguration = pulumi.Input.asInput<IdentityConfigurationProperties>(identityConfiguration),
      location = pulumi.Input.asOptionalInput<String>(location),
      portalAdminEmailAddress = pulumi.Input.asInput<String>(portalAdminEmailAddress),
      portalName = pulumi.Input.asInput<String>(portalName),
      portalOwnerEmailAddress = pulumi.Input.asInput<String>(portalOwnerEmailAddress),
      portalOwnerOrganizationName = pulumi.Input.asInput<String>(portalOwnerOrganizationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundancyEnabled = pulumi.Input.asInput<bool>(zoneRedundancyEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityTrainingName': ?communityTrainingName,
      'disasterRecoveryEnabled': disasterRecoveryEnabled,
      'identityConfiguration': pulumi.Input.mapInputValue<IdentityConfigurationProperties, Map<String, dynamic>>(identityConfiguration, (value) => value.toMap()),
      'location': ?location,
      'portalAdminEmailAddress': portalAdminEmailAddress,
      'portalName': portalName,
      'portalOwnerEmailAddress': portalOwnerEmailAddress,
      'portalOwnerOrganizationName': portalOwnerOrganizationName,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zoneRedundancyEnabled': zoneRedundancyEnabled,
    };
  }

  factory CommunityTrainingArgs.fromMap(Map<String, dynamic> map) {
    return CommunityTrainingArgs(
      communityTrainingName: map['communityTrainingName'] == null ? null : pulumi.Output.create<String>(map['communityTrainingName'] as String),
      disasterRecoveryEnabled: pulumi.Output.create<bool>(map['disasterRecoveryEnabled'] as bool),
      identityConfiguration: pulumi.Output.create<IdentityConfigurationProperties>(IdentityConfigurationProperties.fromMap((map['identityConfiguration'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      portalAdminEmailAddress: pulumi.Output.create<String>(map['portalAdminEmailAddress'] as String),
      portalName: pulumi.Output.create<String>(map['portalName'] as String),
      portalOwnerEmailAddress: pulumi.Output.create<String>(map['portalOwnerEmailAddress'] as String),
      portalOwnerOrganizationName: pulumi.Output.create<String>(map['portalOwnerOrganizationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneRedundancyEnabled: pulumi.Output.create<bool>(map['zoneRedundancyEnabled'] as bool),
    );
  }
}

