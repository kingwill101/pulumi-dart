// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAppregistryAttributeGroupAssociations.
class GetAppregistryAttributeGroupAssociationsResult {
  /// Set of attribute group IDs this application is associated with.
  final List<String>? attributeGroupIds;
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetAppregistryAttributeGroupAssociationsResult].
  /// [attributeGroupIds] Set of attribute group IDs this application is associated with.
  /// [id] Optional.
  /// [name] Optional.
  /// [region] Optional.
  const GetAppregistryAttributeGroupAssociationsResult({
    this.attributeGroupIds,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeGroupIds': ?attributeGroupIds,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetAppregistryAttributeGroupAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetAppregistryAttributeGroupAssociationsResult(
      attributeGroupIds: (() { final guardedValue = map['attributeGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
