// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getScopeAssignment.
class GetScopeAssignmentResult {
  /// The managed network ID with scope will be assigned to.
  final String? assignedManagedNetwork;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// Provisioning state of the ManagedNetwork resource.
  final String provisioningState;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// Creates a new [GetScopeAssignmentResult].
  /// [assignedManagedNetwork] The managed network ID with scope will be assigned to.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the ManagedNetwork resource.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  GetScopeAssignmentResult({
    this.assignedManagedNetwork,
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedManagedNetwork': ?assignedManagedNetwork,
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetScopeAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetScopeAssignmentResult(
      assignedManagedNetwork: (() { final guardedValue = map['assignedManagedNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

