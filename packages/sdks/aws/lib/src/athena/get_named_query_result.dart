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

  /// Creates a new [GetNamedQueryResult].
  /// [database] Database to which the query belongs.
  /// [description] Brief explanation of the query.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [querystring] Required.
  /// [region] Required.
  /// [workgroup] Optional.
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
    return <String, dynamic>{
      'database': database,
      'description': description,
      'id': id,
      'name': name,
      'querystring': querystring,
      'region': region,
      'workgroup': ?workgroup,
    };
  }

  factory GetNamedQueryResult.fromMap(Map<String, dynamic> map) {
    return GetNamedQueryResult(
      database: map['database'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      querystring: map['querystring'] as String,
      region: map['region'] as String,
      workgroup: (() { final guardedValue = map['workgroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

