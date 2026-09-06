// ignore_for_file: unused_element, unnecessary_cast

import 'identity_configuration_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCommunityTraining.
class GetCommunityTrainingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// To indicate whether the Community Training instance has Disaster Recovery enabled
  final bool? disasterRecoveryEnabled;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The identity configuration of the Community Training resource
  final IdentityConfigurationPropertiesResponse? identityConfiguration;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The email address of the portal admin
  final String? portalAdminEmailAddress;
  /// The portal name (website name) of the Community Training instance
  final String? portalName;
  /// The email address of the portal owner. Will be used as the primary contact
  final String? portalOwnerEmailAddress;
  /// The organization name of the portal owner
  final String? portalOwnerOrganizationName;
  /// The status of the last operation.
  final String? provisioningState;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// To indicate whether the Community Training instance has Zone Redundancy enabled
  final bool? zoneRedundancyEnabled;

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
    this.azureApiVersion,
    this.disasterRecoveryEnabled,
    this.id,
    this.identityConfiguration,
    this.location,
    this.name,
    this.portalAdminEmailAddress,
    this.portalName,
    this.portalOwnerEmailAddress,
    this.portalOwnerOrganizationName,
    this.provisioningState,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
    this.zoneRedundancyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'disasterRecoveryEnabled': ?disasterRecoveryEnabled,
      'id': ?id,
      'identityConfiguration': ?identityConfiguration?.toMap(),
      'location': ?location,
      'name': ?name,
      'portalAdminEmailAddress': ?portalAdminEmailAddress,
      'portalName': ?portalName,
      'portalOwnerEmailAddress': ?portalOwnerEmailAddress,
      'portalOwnerOrganizationName': ?portalOwnerOrganizationName,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory GetCommunityTrainingResult.fromMap(Map<String, dynamic> map) {
    return GetCommunityTrainingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disasterRecoveryEnabled: (() { final guardedValue = map['disasterRecoveryEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityConfiguration: (() { final guardedValue = map['identityConfiguration']; if (guardedValue == null) return null; return IdentityConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portalAdminEmailAddress: (() { final guardedValue = map['portalAdminEmailAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portalName: (() { final guardedValue = map['portalName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portalOwnerEmailAddress: (() { final guardedValue = map['portalOwnerEmailAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portalOwnerOrganizationName: (() { final guardedValue = map['portalOwnerOrganizationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneRedundancyEnabled: (() { final guardedValue = map['zoneRedundancyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
