// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNamedQuery.
class GetNamedQueryResult {
  /// Database to which the query belongs.
  final String database;

  /// Brief explanation of the query.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String querystring;
  final String region;
  final String? workgroup;

  GetNamedQueryResult({
    required this.database,
    required this.description,
    required this.id,
    required this.name,
    required this.querystring,
    required this.region,
    this.workgroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['querystring'] = querystring;
    map['region'] = region;
    final workgroupValue = workgroup;
    if (workgroupValue != null) {
      map['workgroup'] = workgroupValue;
    }
    return map;
  }

  factory GetNamedQueryResult.fromMap(Map<String, dynamic> map) {
    return GetNamedQueryResult(
      database: map['database'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      querystring: map['querystring'] as String,
      region: map['region'] as String,
      workgroup: map['workgroup'] == null ? null : map['workgroup'] as String,
    );
  }
}
