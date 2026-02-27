// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PreparedStatement.
class PreparedStatementArgs {
  /// Brief explanation of prepared statement. Maximum length of 1024.
  final pulumi.Input<String>? description;

  /// The name of the prepared statement. Maximum length of 256.
  final pulumi.Input<String>? name;

  /// The query string for the prepared statement.
  final pulumi.Input<String> queryStatement;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the workgroup to which the prepared statement belongs.
  final pulumi.Input<String> workgroup;

  PreparedStatementArgs({
    this.description,
    this.name,
    required this.queryStatement,
    this.region,
    required this.workgroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['queryStatement'] = queryStatement;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['workgroup'] = workgroup;
    return map;
  }

  factory PreparedStatementArgs.fromMap(Map<String, dynamic> map) {
    return PreparedStatementArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      queryStatement: pulumi.Input.asInput<String>(map['queryStatement']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      workgroup: pulumi.Input.asInput<String>(map['workgroup']),
    );
  }
}
