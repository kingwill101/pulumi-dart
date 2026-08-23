// ignore_for_file: unused_element, unnecessary_cast

import 'identity_configuration_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCommunityTraining.
class GetCommunityTrainingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// To indicate whether the Community Training instance has Disaster Recovery enabled
  final bool disasterRecoveryEnabled;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity configuration of the Community Training resource
  final IdentityConfigurationPropertiesResponse identityConfiguration;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The email address of the portal admin
  final String portalAdminEmailAddress;
  /// The portal name (website name) of the Community Training instance
  final String portalName;
  /// The email address of the portal owner. Will be used as the primary contact
  final String portalOwnerEmailAddress;
  /// The organization name of the portal owner
  final String portalOwnerOrganizationName;
  /// The status of the last operation.
  final String provisioningState;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// To indicate whether the Community Training instance has Zone Redundancy enabled
  final bool zoneRedundancyEnabled;

  /// Creates a new [GetCommunityTrainingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disasterRecoveryEnabled] To indicate whether the Community Training instance has Disaster Recovery enabled
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identityConfiguration] The identity configuration of the Community Training resource
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [portalAdminEmailAddress] The email address of the portal admin
  /// [portalName] The portal name (website name) of the Community Training instance
  /// [portalOwnerEmailAddress] The email address of the portal owner. Will be used as the primary contact
  /// [portalOwnerOrganizationName] The organization name of the portal owner
  /// [provisioningState] The status of the last operation.
  /// [sku] The SKU (Stock Keeping Unit) assigned to this resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zoneRedundancyEnabled] To indicate whether the Community Training instance has Zone Redundancy enabled
  const GetCommunityTrainingResult({
    required this.azureApiVersion,
    required this.disasterRecoveryEnabled,
    required this.id,
    required this.identityConfiguration,
    required this.location,
    required this.name,
    required this.portalAdminEmailAddress,
    required this.portalName,
    required this.portalOwnerEmailAddress,
    required this.portalOwnerOrganizationName,
    required this.provisioningState,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
    required this.zoneRedundancyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'disasterRecoveryEnabled': disasterRecoveryEnabled,
      'id': id,
      'identityConfiguration': identityConfiguration.toMap(),
      'location': location,
      'name': name,
      'portalAdminEmailAddress': portalAdminEmailAddress,
      'portalName': portalName,
      'portalOwnerEmailAddress': portalOwnerEmailAddress,
      'portalOwnerOrganizationName': portalOwnerOrganizationName,
      'provisioningState': provisioningState,
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zoneRedundancyEnabled': zoneRedundancyEnabled,
    };
  }

  factory GetCommunityTrainingResult.fromMap(Map<String, dynamic> map) {
    return GetCommunityTrainingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      disasterRecoveryEnabled: map['disasterRecoveryEnabled'] as bool,
      id: map['id'] as String,
      identityConfiguration: IdentityConfigurationPropertiesResponse.fromMap((map['identityConfiguration']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      portalAdminEmailAddress: map['portalAdminEmailAddress'] as String,
      portalName: map['portalName'] as String,
      portalOwnerEmailAddress: map['portalOwnerEmailAddress'] as String,
      portalOwnerOrganizationName: map['portalOwnerOrganizationName'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] as bool,
    );
  }
}
