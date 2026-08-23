// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getL2IsolationDomain.
class GetL2IsolationDomainResult {
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration state of the resource.
  final String configurationState;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Maximum transmission unit. Default value is 1500.
  final int? mtu;
  /// The name of the resource
  final String name;
  /// ARM Resource ID of the Network Fabric.
  final String networkFabricId;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Vlan Identifier of the Network Fabric. Example: 501.
  final int vlanId;

  /// Creates a new [GetL2IsolationDomainResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [mtu] Maximum transmission unit. Default value is 1500.
  /// [name] The name of the resource
  /// [networkFabricId] ARM Resource ID of the Network Fabric.
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vlanId] Vlan Identifier of the Network Fabric. Example: 501.
  const GetL2IsolationDomainResult({
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    required this.id,
    required this.location,
    this.mtu,
    required this.name,
    required this.networkFabricId,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'id': id,
      'location': location,
      'mtu': ?mtu,
      'name': name,
      'networkFabricId': networkFabricId,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vlanId': vlanId,
    };
  }

  factory GetL2IsolationDomainResult.fromMap(Map<String, dynamic> map) {
    return GetL2IsolationDomainResult(
      administrativeState: map['administrativeState'] as String,
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      networkFabricId: map['networkFabricId'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      vlanId: map['vlanId'] as int,
    );
  }
}
