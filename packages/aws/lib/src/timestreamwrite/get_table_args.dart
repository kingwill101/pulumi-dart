// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_timestreamwrite_get_table_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_timestreamwrite_get_table_get_table_args_doc}
class GetTableArgs {
  /// Name of the Timestream database.
  final pulumi.Input<String> databaseName;

  /// Name of the Timestream table.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetTableArgs].
  /// [databaseName] Name of the Timestream database.
  /// [name] Name of the Timestream table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetTableArgs({
    required String databaseName,
    required String name,
    String? region,
  })  : databaseName = pulumi.Input.asInput<String>(databaseName),
        name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      databaseName: map['databaseName'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
