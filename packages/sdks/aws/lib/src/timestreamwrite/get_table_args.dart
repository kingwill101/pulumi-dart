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
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'name': name,
      'region': ?region,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

