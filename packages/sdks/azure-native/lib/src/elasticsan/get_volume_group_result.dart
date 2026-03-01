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
  final String azureApiVersion;
  /// Type of encryption
  final String? encryption;
  /// Encryption Properties describing Key Vault and Identity information
  final EncryptionPropertiesResponse? encryptionProperties;
  /// A boolean indicating whether or not Data Integrity Check is enabled
  final bool? enforceDataIntegrityCheckForIscsi;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The name of the resource
  final String name;
  /// A collection of rules governing the accessibility from specific network locations.
  final NetworkRuleSetResponse? networkAcls;
  /// The list of Private Endpoint Connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Type of storage target
  final String? protocolType;
  /// State of the operation on the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetVolumeGroupResult({
    required this.azureApiVersion,
    this.encryption,
    this.encryptionProperties,
    this.enforceDataIntegrityCheckForIscsi,
    required this.id,
    this.identity,
    required this.name,
    this.networkAcls,
    required this.privateEndpointConnections,
    this.protocolType,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'encryption': ?encryption,
      'encryptionProperties': ?encryptionProperties == null ? null : encryptionProperties!.toMap(),
      'enforceDataIntegrityCheckForIscsi': ?enforceDataIntegrityCheckForIscsi,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'name': name,
      'networkAcls': ?networkAcls == null ? null : networkAcls!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'protocolType': ?protocolType,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetVolumeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      encryption: map['encryption'] == null ? null : map['encryption'] as String,
      encryptionProperties: map['encryptionProperties'] == null ? null : EncryptionPropertiesResponse.fromMap((map['encryptionProperties'] as Map).cast<String, dynamic>()),
      enforceDataIntegrityCheckForIscsi: map['enforceDataIntegrityCheckForIscsi'] == null ? null : map['enforceDataIntegrityCheckForIscsi'] as bool,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkAcls: map['networkAcls'] == null ? null : NetworkRuleSetResponse.fromMap((map['networkAcls'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      protocolType: map['protocolType'] == null ? null : map['protocolType'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

