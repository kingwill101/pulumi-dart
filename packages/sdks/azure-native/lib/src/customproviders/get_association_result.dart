// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAssociation.
class GetAssociationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The association id.
  final String id;

  /// The association name.
  final String name;

  /// The provisioning state of the association.
  final String provisioningState;

  /// The REST resource instance of the target resource for this association.
  final String? targetResourceId;

  /// The association type.
  final String type;

  /// Creates a new [GetAssociationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The association id.
  /// [name] The association name.
  /// [provisioningState] The provisioning state of the association.
  /// [targetResourceId] The REST resource instance of the target resource for this association.
  /// [type] The association type.
  GetAssociationResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.targetResourceId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'targetResourceId': ?targetResourceId,
      'type': type,
    };
  }

  factory GetAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetAssociationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      targetResourceId: (() {
        final guardedValue = map['targetResourceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
