// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_connectivity_properties_response.dart';
import 'default_extension_details_response.dart';
import 'per_node_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getArcSetting.
class GetArcSettingResult {
  /// Aggregate state of Arc agent across the nodes in this HCI cluster.
  final String? aggregateState;
  /// App id of arc AAD identity.
  final String? arcApplicationClientId;
  /// Object id of arc AAD identity.
  final String? arcApplicationObjectId;
  /// Tenant id of arc AAD identity.
  final String? arcApplicationTenantId;
  /// The resource group that hosts the Arc agents, ie. Hybrid Compute Machine resources.
  final String? arcInstanceResourceGroup;
  /// Object id of arc AAD service principal.
  final String? arcServicePrincipalObjectId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// contains connectivity related configuration for ARC resources
  final List<ArcConnectivityPropertiesResponse>? connectivityProperties;
  /// Properties for each of the default extensions category
  final List<DefaultExtensionDetailsResponse>? defaultExtensions;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// State of Arc agent in each of the nodes.
  final List<PerNodeStateResponse>? perNodeDetails;
  /// Provisioning state of the ArcSetting proxy resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetArcSettingResult].
  /// [aggregateState] Aggregate state of Arc agent across the nodes in this HCI cluster.
  /// [arcApplicationClientId] App id of arc AAD identity.
  /// [arcApplicationObjectId] Object id of arc AAD identity.
  /// [arcApplicationTenantId] Tenant id of arc AAD identity.
  /// [arcInstanceResourceGroup] The resource group that hosts the Arc agents, ie. Hybrid Compute Machine resources.
  /// [arcServicePrincipalObjectId] Object id of arc AAD service principal.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectivityProperties] contains connectivity related configuration for ARC resources
  /// [defaultExtensions] Properties for each of the default extensions category
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [perNodeDetails] State of Arc agent in each of the nodes.
  /// [provisioningState] Provisioning state of the ArcSetting proxy resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetArcSettingResult({
    this.aggregateState,
    this.arcApplicationClientId,
    this.arcApplicationObjectId,
    this.arcApplicationTenantId,
    this.arcInstanceResourceGroup,
    this.arcServicePrincipalObjectId,
    this.azureApiVersion,
    this.connectivityProperties,
    this.defaultExtensions,
    this.id,
    this.name,
    this.perNodeDetails,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateState': ?aggregateState,
      'arcApplicationClientId': ?arcApplicationClientId,
      'arcApplicationObjectId': ?arcApplicationObjectId,
      'arcApplicationTenantId': ?arcApplicationTenantId,
      'arcInstanceResourceGroup': ?arcInstanceResourceGroup,
      'arcServicePrincipalObjectId': ?arcServicePrincipalObjectId,
      'azureApiVersion': ?azureApiVersion,
      'connectivityProperties': ?(() { final guardedValue = connectivityProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<ArcConnectivityPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultExtensions': ?(() { final guardedValue = defaultExtensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<DefaultExtensionDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'perNodeDetails': ?(() { final guardedValue = perNodeDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<PerNodeStateResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetArcSettingResult.fromMap(Map<String, dynamic> map) {
    return GetArcSettingResult(
      aggregateState: (() { final guardedValue = map['aggregateState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arcApplicationClientId: (() { final guardedValue = map['arcApplicationClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arcApplicationObjectId: (() { final guardedValue = map['arcApplicationObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arcApplicationTenantId: (() { final guardedValue = map['arcApplicationTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arcInstanceResourceGroup: (() { final guardedValue = map['arcInstanceResourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arcServicePrincipalObjectId: (() { final guardedValue = map['arcServicePrincipalObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectivityProperties: (() { final guardedValue = map['connectivityProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArcConnectivityPropertiesResponse>(guardedValue, (value) => ArcConnectivityPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultExtensions: (() { final guardedValue = map['defaultExtensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DefaultExtensionDetailsResponse>(guardedValue, (value) => DefaultExtensionDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perNodeDetails: (() { final guardedValue = map['perNodeDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PerNodeStateResponse>(guardedValue, (value) => PerNodeStateResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
