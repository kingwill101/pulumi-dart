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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? queryStatement,
    pulumi.Output<String>? region,
    pulumi.Output<String>? workgroup,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      queryStatement = pulumi.Input.asOptionalInput<String>(queryStatement),
      region = pulumi.Input.asOptionalInput<String>(region),
      workgroup = pulumi.Input.asOptionalInput<String>(workgroup);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      queryStatement: map['queryStatement'] == null ? null : pulumi.Output.create<String>(map['queryStatement'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      workgroup: map['workgroup'] == null ? null : pulumi.Output.create<String>(map['workgroup'] as String),
    );
  }
}

