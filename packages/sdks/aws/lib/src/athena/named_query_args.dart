// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_athena_named_query_named_query_args_doc}
/// The set of arguments for NamedQuery.
/// {@endtemplate}
/// {@macro pulumi_athena_named_query_named_query_args_doc}
class NamedQueryArgs {
  /// Database to which the query belongs.
  final pulumi.Input<String> database;

  /// Brief explanation of the query. Maximum length of 1024.
  final pulumi.Input<String>? description;

  /// Plain language name for the query. Maximum length of 128.
  final pulumi.Input<String>? name;

  /// Text of the query itself. In other words, all query statements. Maximum length of 262144.
  final pulumi.Input<String> query;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Workgroup to which the query belongs. Defaults to `primary`
  final pulumi.Input<String>? workgroup;

  /// Creates a new [NamedQueryArgs].
  /// [database] Database to which the query belongs.
  /// [description] Brief explanation of the query. Maximum length of 1024.
  /// [name] Plain language name for the query. Maximum length of 128.
  /// [query] Text of the query itself. In other words, all query statements. Maximum length of 262144.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroup] Workgroup to which the query belongs. Defaults to `primary`
  NamedQueryArgs({
    required this.database,
    this.description,
    this.name,
    required this.query,
    this.region,
    this.workgroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'description': ?description,
      'name': ?name,
      'query': query,
      'region': ?region,
      'workgroup': ?workgroup,
    };
  }

  factory NamedQueryArgs.fromMap(Map<String, dynamic> map) {
    return NamedQueryArgs(
      database: pulumi.Input.fromValue(map['database'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workgroup: (() {
        final guardedValue = map['workgroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
