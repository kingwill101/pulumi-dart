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
    this.communityTrainingName,
    required this.disasterRecoveryEnabled,
    required this.identityConfiguration,
    this.location,
    required this.portalAdminEmailAddress,
    required this.portalName,
    required this.portalOwnerEmailAddress,
    required this.portalOwnerOrganizationName,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    required this.zoneRedundancyEnabled,
  });

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
      communityTrainingName: (() { final guardedValue = map['communityTrainingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disasterRecoveryEnabled: pulumi.Input.fromValue(map['disasterRecoveryEnabled'] as bool),
      identityConfiguration: pulumi.Input.fromValue(IdentityConfigurationProperties.fromMap((map['identityConfiguration']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portalAdminEmailAddress: pulumi.Input.fromValue(map['portalAdminEmailAddress'] as String),
      portalName: pulumi.Input.fromValue(map['portalName'] as String),
      portalOwnerEmailAddress: pulumi.Input.fromValue(map['portalOwnerEmailAddress'] as String),
      portalOwnerOrganizationName: pulumi.Input.fromValue(map['portalOwnerOrganizationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneRedundancyEnabled: pulumi.Input.fromValue(map['zoneRedundancyEnabled'] as bool),
    );
  }
}

