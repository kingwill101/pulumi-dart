// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDedicatedHub.
class GetDedicatedHubResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Designation of hub resource allocation (Pooled or Reserved)
  final String? designation;
  /// Firewall Policy Resource ID
  final String? firewallPolicyResourceId;
  /// Firewall Resource ID
  final String? firewallResourceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Virtual Hub Resource ID
  final String? vHubResourceId;

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
    this.azureApiVersion,
    this.designation,
    this.firewallPolicyResourceId,
    this.firewallResourceId,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.vHubResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'designation': ?designation,
      'firewallPolicyResourceId': ?firewallPolicyResourceId,
      'firewallResourceId': ?firewallResourceId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'vHubResourceId': ?vHubResourceId,
    };
  }

  factory GetDedicatedHubResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHubResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      designation: (() { final guardedValue = map['designation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallPolicyResourceId: (() { final guardedValue = map['firewallPolicyResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallResourceId: (() { final guardedValue = map['firewallResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vHubResourceId: (() { final guardedValue = map['vHubResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
