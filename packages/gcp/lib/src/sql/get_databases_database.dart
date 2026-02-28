// ignore_for_file: unused_element, unnecessary_cast

class GetDatabasesDatabase {
  /// The charset value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of 'UTF8' at creation time.
  final String charset;

  /// The collation value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of 'en_US.UTF8' at creation time.
  final String collation;

  /// The deletion policy for the database. Setting ABANDON allows the resource
  /// to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be
  /// deleted from the API if there are users other than cloudsqlsuperuser with access. Possible
  /// values are: "ABANDON", "DELETE". Defaults to "DELETE".
  final String deletionPolicy;

  /// The name of the Cloud SQL database instance in which the database belongs.
  final String instance;

  /// The name of the database in the Cloud SQL instance.
  /// This does not include the project ID or instance name.
  final String name;

  /// The ID of the project in which the instance belongs.
  ///
  /// > **Note** This datasource performs client-side sorting to provide consistent ordering of the databases.
  final String project;
  final String selfLink;

  /// Creates a new [GetDatabasesDatabase].
  /// [charset] The charset value. See MySQL's
  /// [collation] The collation value. See MySQL's
  /// [deletionPolicy] The deletion policy for the database. Setting ABANDON allows the resource
  /// [instance] The name of the Cloud SQL database instance in which the database belongs.
  /// [name] The name of the database in the Cloud SQL instance.
  /// [project] The ID of the project in which the instance belongs.
  /// [selfLink] Required.
  GetDatabasesDatabase({
    required this.charset,
    required this.collation,
    required this.deletionPolicy,
    required this.instance,
    required this.name,
    required this.project,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['charset'] = charset;
    map['collation'] = collation;
    map['deletionPolicy'] = deletionPolicy;
    map['instance'] = instance;
    map['name'] = name;
    map['project'] = project;
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetDatabasesDatabase.fromMap(Map<String, dynamic> map) {
    return GetDatabasesDatabase(
      charset: map['charset'] as String,
      collation: map['collation'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      instance: map['instance'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
