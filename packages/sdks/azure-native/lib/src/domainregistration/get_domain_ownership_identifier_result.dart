// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainOwnershipIdentifier.
class GetDomainOwnershipIdentifierResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Ownership Id.
  final String? ownershipId;
  /// Resource type.
  final String type;

  /// Creates a new [GetDomainOwnershipIdentifierResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [ownershipId] Ownership Id.
  /// [type] Resource type.
  GetDomainOwnershipIdentifierResult({
    required this.azureApiVersion,
    required this.id,
    this.kind,
    required this.name,
    this.ownershipId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'name': name,
      'ownershipId': ?ownershipId,
      'type': type,
    };
  }

  factory GetDomainOwnershipIdentifierResult.fromMap(Map<String, dynamic> map) {
    return GetDomainOwnershipIdentifierResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      ownershipId: map['ownershipId'] == null ? null : map['ownershipId']! as String,
      type: map['type'] as String,
    );
  }
}

