// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PreparedStatement resources.
class PreparedStatementState {
  /// Brief explanation of prepared statement. Maximum length of 1024.
  final pulumi.Input<String>? description;
  /// The name of the prepared statement. Maximum length of 256.
  final pulumi.Input<String>? name;
  /// The query string for the prepared statement.
  final pulumi.Input<String>? queryStatement;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the workgroup to which the prepared statement belongs.
  final pulumi.Input<String>? workgroup;

  /// Creates a new [PreparedStatementState].
  /// [description] Brief explanation of prepared statement. Maximum length of 1024.
  /// [name] The name of the prepared statement. Maximum length of 256.
  /// [queryStatement] The query string for the prepared statement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroup] The name of the workgroup to which the prepared statement belongs.
  PreparedStatementState({
    this.description,
    this.name,
    this.queryStatement,
    this.region,
    this.workgroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'queryStatement': ?queryStatement,
      'region': ?region,
      'workgroup': ?workgroup,
    };
  }

  factory PreparedStatementState.fromMap(Map<String, dynamic> map) {
    return PreparedStatementState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      queryStatement: map['queryStatement'] == null ? null : (map['queryStatement'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      workgroup: map['workgroup'] == null ? null : (map['workgroup'] as String).input(),
    );
  }
}

