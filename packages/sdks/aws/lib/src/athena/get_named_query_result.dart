// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamedQuery.
class GetNamedQueryResult {
  /// Database to which the query belongs.
  final String? database;
  /// Brief explanation of the query.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Text of the query itself.
  final String? querystring;
  final String? region;
  final String? workgroup;

  /// Creates a new [GetNamedQueryResult].
  /// [database] Database to which the query belongs.
  /// [description] Brief explanation of the query.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [querystring] Text of the query itself.
  /// [region] Optional.
  /// [workgroup] Optional.
  const GetNamedQueryResult({
    this.database,
    this.description,
    this.id,
    this.name,
    this.querystring,
    this.region,
    this.workgroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'querystring': ?querystring,
      'region': ?region,
      'workgroup': ?workgroup,
    };
  }

  factory GetNamedQueryResult.fromMap(Map<String, dynamic> map) {
    return GetNamedQueryResult(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      querystring: (() { final guardedValue = map['querystring']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workgroup: (() { final guardedValue = map['workgroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
