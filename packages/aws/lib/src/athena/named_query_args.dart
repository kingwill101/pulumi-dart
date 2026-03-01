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
    required String database,
    String? description,
    String? name,
    required String query,
    String? region,
    String? workgroup,
  }) :
      database = pulumi.Input.asInput<String>(database),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      query = pulumi.Input.asInput<String>(query),
      region = pulumi.Input.asOptionalInput<String>(region),
      workgroup = pulumi.Input.asOptionalInput<String>(workgroup);

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
      database: map['database'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      query: map['query'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      workgroup: map['workgroup'] == null ? null : map['workgroup'] as String,
    );
  }
}

