// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAppregistryAttributeGroupAssociations.
class GetAppregistryAttributeGroupAssociationsResult {
  /// Set of attribute group IDs this application is associated with.
  final List<String> attributeGroupIds;
  final String? id;
  final String? name;
  final String region;

  /// Creates a new [GetAppregistryAttributeGroupAssociationsResult].
  /// [attributeGroupIds] Set of attribute group IDs this application is associated with.
  /// [id] Optional.
  /// [name] Optional.
  /// [region] Required.
  GetAppregistryAttributeGroupAssociationsResult({
    required this.attributeGroupIds,
    this.id,
    this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeGroupIds': attributeGroupIds,
      'id': ?id,
      'name': ?name,
      'region': region,
    };
  }

  factory GetAppregistryAttributeGroupAssociationsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppregistryAttributeGroupAssociationsResult(
      attributeGroupIds: (map['attributeGroupIds'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] as String,
    );
  }
}
