// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamedQuery resources.
class NamedQueryState {
  /// Database to which the query belongs.
  final pulumi.Input<String>? database;
  /// Brief explanation of the query. Maximum length of 1024.
  final pulumi.Input<String>? description;
  /// Plain language name for the query. Maximum length of 128.
  final pulumi.Input<String>? name;
  /// Text of the query itself. In other words, all query statements. Maximum length of 262144.
  final pulumi.Input<String>? query;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Workgroup to which the query belongs. Defaults to `primary`
  final pulumi.Input<String>? workgroup;

  /// Creates a new [NamedQueryState].
  /// [database] Database to which the query belongs.
  /// [description] Brief explanation of the query. Maximum length of 1024.
  /// [name] Plain language name for the query. Maximum length of 128.
  /// [query] Text of the query itself. In other words, all query statements. Maximum length of 262144.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroup] Workgroup to which the query belongs. Defaults to `primary`
  NamedQueryState({
    pulumi.Output<String>? database,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? query,
    pulumi.Output<String>? region,
    pulumi.Output<String>? workgroup,
  }) :
      database = pulumi.Input.asOptionalInput<String>(database),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      query = pulumi.Input.asOptionalInput<String>(query),
      region = pulumi.Input.asOptionalInput<String>(region),
      workgroup = pulumi.Input.asOptionalInput<String>(workgroup);

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
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      query: map['query'] == null ? null : pulumi.Output.create<String>(map['query'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      workgroup: map['workgroup'] == null ? null : pulumi.Output.create<String>(map['workgroup'] as String),
    );
  }
}

