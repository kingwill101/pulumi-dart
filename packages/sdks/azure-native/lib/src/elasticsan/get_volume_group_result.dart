// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties_response.dart';
import 'identity_response.dart';
import 'network_rule_set_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVolumeGroup.
class GetVolumeGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Type of encryption
  final String? encryption;
  /// Encryption Properties describing Key Vault and Identity information
  final EncryptionPropertiesResponse? encryptionProperties;
  /// A boolean indicating whether or not Data Integrity Check is enabled
  final bool? enforceDataIntegrityCheckForIscsi;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The name of the resource
  final String? name;
  /// A collection of rules governing the accessibility from specific network locations.
  final NetworkRuleSetResponse? networkAcls;
  /// The list of Private Endpoint Connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Type of storage target
  final String? protocolType;
  /// State of the operation on the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetVolumeGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryption] Type of encryption
  /// [encryptionProperties] Encryption Properties describing Key Vault and Identity information
  /// [enforceDataIntegrityCheckForIscsi] A boolean indicating whether or not Data Integrity Check is enabled
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the resource.
  /// [name] The name of the resource
  /// [networkAcls] A collection of rules governing the accessibility from specific network locations.
  /// [privateEndpointConnections] The list of Private Endpoint Connections.
  /// [protocolType] Type of storage target
  /// [provisioningState] State of the operation on the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetVolumeGroupResult({
    this.azureApiVersion,
    this.encryption,
    this.encryptionProperties,
    this.enforceDataIntegrityCheckForIscsi,
    this.id,
    this.identity,
    this.name,
    this.networkAcls,
    this.privateEndpointConnections,
    this.protocolType,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'encryption': ?encryption,
      'encryptionProperties': ?encryptionProperties?.toMap(),
      'enforceDataIntegrityCheckForIscsi': ?enforceDataIntegrityCheckForIscsi,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'name': ?name,
      'networkAcls': ?networkAcls?.toMap(),
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'protocolType': ?protocolType,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetVolumeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionProperties: (() { final guardedValue = map['encryptionProperties']; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enforceDataIntegrityCheckForIscsi: (() { final guardedValue = map['enforceDataIntegrityCheckForIscsi']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return NetworkRuleSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
