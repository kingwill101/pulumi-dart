// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDisasterRecoveryConfig.
class GetDisasterRecoveryConfigResult {
  /// Alternate name specified when alias and namespace names are same.
  final String? alternateName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  final String? partnerNamespace;
  /// Number of entities pending to be replicated.
  final double pendingReplicationOperationsCount;
  /// Provisioning state of the Alias(Disaster Recovery configuration) - possible values 'Accepted' or 'Succeeded' or 'Failed'
  final String provisioningState;
  /// role of namespace in GEO DR - possible values 'Primary' or 'PrimaryNotReplicating' or 'Secondary'
  final String role;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String type;

  /// Creates a new [GetDisasterRecoveryConfigResult].
  /// [alternateName] Alternate name specified when alias and namespace names are same.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [partnerNamespace] ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  /// [pendingReplicationOperationsCount] Number of entities pending to be replicated.
  /// [provisioningState] Provisioning state of the Alias(Disaster Recovery configuration) - possible values 'Accepted' or 'Succeeded' or 'Failed'
  /// [role] role of namespace in GEO DR - possible values 'Primary' or 'PrimaryNotReplicating' or 'Secondary'
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  GetDisasterRecoveryConfigResult({
    this.alternateName,
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    this.partnerNamespace,
    required this.pendingReplicationOperationsCount,
    required this.provisioningState,
    required this.role,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateName': ?alternateName,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'partnerNamespace': ?partnerNamespace,
      'pendingReplicationOperationsCount': pendingReplicationOperationsCount,
      'provisioningState': provisioningState,
      'role': role,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDisasterRecoveryConfigResult.fromMap(Map<String, dynamic> map) {
    return GetDisasterRecoveryConfigResult(
      alternateName: map['alternateName'] == null ? null : map['alternateName']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      partnerNamespace: map['partnerNamespace'] == null ? null : map['partnerNamespace']! as String,
      pendingReplicationOperationsCount: map['pendingReplicationOperationsCount'] as double,
      provisioningState: map['provisioningState'] as String,
      role: map['role'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

