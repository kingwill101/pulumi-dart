// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDedicatedHub.
class GetDedicatedHubResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Designation of hub resource allocation (Pooled or Reserved)
  final String? designation;
  /// Firewall Policy Resource ID
  final String firewallPolicyResourceId;
  /// Firewall Resource ID
  final String firewallResourceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Virtual Hub Resource ID
  final String vHubResourceId;

  /// Creates a new [GetDedicatedHubResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [designation] Designation of hub resource allocation (Pooled or Reserved)
  /// [firewallPolicyResourceId] Firewall Policy Resource ID
  /// [firewallResourceId] Firewall Resource ID
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vHubResourceId] Virtual Hub Resource ID
  const GetDedicatedHubResult({
    required this.azureApiVersion,
    this.designation,
    required this.firewallPolicyResourceId,
    required this.firewallResourceId,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.vHubResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'designation': ?designation,
      'firewallPolicyResourceId': firewallPolicyResourceId,
      'firewallResourceId': firewallResourceId,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vHubResourceId': vHubResourceId,
    };
  }

  factory GetDedicatedHubResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHubResult(
      azureApiVersion: map['azureApiVersion'] as String,
      designation: (() { final guardedValue = map['designation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallPolicyResourceId: map['firewallPolicyResourceId'] as String,
      firewallResourceId: map['firewallResourceId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      vHubResourceId: map['vHubResourceId'] as String,
    );
  }
}
