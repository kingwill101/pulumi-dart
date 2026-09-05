// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamedQuery resources.
class NamedQueryState {
  /// Database to which the query belongs.
  final pulumi.Input<String?>? database;
  /// Brief explanation of the query. Maximum length of 1024.
  final pulumi.Input<String?>? description;
  /// Plain language name for the query. Maximum length of 128.
  final pulumi.Input<String?>? name;
  /// Text of the query itself. In other words, all query statements. Maximum length of 262144.
  final pulumi.Input<String?>? query;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Workgroup to which the query belongs. Defaults to `primary`
  final pulumi.Input<String?>? workgroup;

  /// Creates a new [NamedQueryState].
  /// [database] Database to which the query belongs.
  /// [description] Brief explanation of the query. Maximum length of 1024.
  /// [name] Plain language name for the query. Maximum length of 128.
  /// [query] Text of the query itself. In other words, all query statements. Maximum length of 262144.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroup] Workgroup to which the query belongs. Defaults to `primary`
  const NamedQueryState({
    this.database,
    this.description,
    this.name,
    this.query,
    this.region,
    this.workgroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'description': ?description,
      'name': ?name,
      'query': ?query,
      'region': ?region,
      'workgroup': ?workgroup,
    };
  }

  factory NamedQueryState.fromMap(Map<String, dynamic> map) {
    return NamedQueryState(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workgroup: (() { final guardedValue = map['workgroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
