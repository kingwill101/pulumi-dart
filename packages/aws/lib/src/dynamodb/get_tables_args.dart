// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dynamodb_get_tables_get_tables_args_doc}
/// Arguments for getTables.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_get_tables_get_tables_args_doc}
class GetTablesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetTablesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetTablesArgs({String? region})
    : region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region};
  }

  factory GetTablesArgs.fromMap(Map<String, dynamic> map) {
    return GetTablesArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
