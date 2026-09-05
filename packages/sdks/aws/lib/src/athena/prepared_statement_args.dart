// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_athena_prepared_statement_prepared_statement_args_doc}
/// The set of arguments for PreparedStatement.
/// {@endtemplate}
/// {@macro pulumi_athena_prepared_statement_prepared_statement_args_doc}
class PreparedStatementArgs {
  /// Brief explanation of prepared statement. Maximum length of 1024.
  final pulumi.Input<String?>? description;
  /// The name of the prepared statement. Maximum length of 256.
  final pulumi.Input<String?>? name;
  /// The query string for the prepared statement.
  final pulumi.Input<String> queryStatement;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The name of the workgroup to which the prepared statement belongs.
  final pulumi.Input<String> workgroup;

  /// Creates a new [PreparedStatementArgs].
  /// [description] Brief explanation of prepared statement. Maximum length of 1024.
  /// [name] The name of the prepared statement. Maximum length of 256.
  /// [queryStatement] The query string for the prepared statement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroup] The name of the workgroup to which the prepared statement belongs.
  const PreparedStatementArgs({
    this.description,
    this.name,
    required this.queryStatement,
    this.region,
    required this.workgroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'queryStatement': queryStatement,
      'region': ?region,
      'workgroup': workgroup,
    };
  }

  factory PreparedStatementArgs.fromMap(Map<String, dynamic> map) {
    return PreparedStatementArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryStatement: pulumi.Input.fromValue(map['queryStatement'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workgroup: pulumi.Input.fromValue(map['workgroup'] as String),
    );
  }
}
