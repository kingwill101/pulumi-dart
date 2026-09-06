// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainOwnershipIdentifier.
class GetDomainOwnershipIdentifierResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Id.
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String? name;
  /// Ownership Id.
  final String? ownershipId;
  /// Resource type.
  final String? type;

  /// Creates a new [GetDomainOwnershipIdentifierResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [ownershipId] Ownership Id.
  /// [type] Resource type.
  const GetDomainOwnershipIdentifierResult({
    this.azureApiVersion,
    this.id,
    this.kind,
    this.name,
    this.ownershipId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'ownershipId': ?ownershipId,
      'type': ?type,
    };
  }

  factory GetDomainOwnershipIdentifierResult.fromMap(Map<String, dynamic> map) {
    return GetDomainOwnershipIdentifierResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownershipId: (() { final guardedValue = map['ownershipId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
