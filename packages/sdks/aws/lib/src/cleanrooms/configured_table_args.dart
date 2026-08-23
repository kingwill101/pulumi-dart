// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configured_table_table_reference.dart';

/// {@template pulumi_cleanrooms_configured_table_configured_table_args_doc}
/// The set of arguments for ConfiguredTable.
/// {@endtemplate}
/// {@macro pulumi_cleanrooms_configured_table_configured_table_args_doc}
class ConfiguredTableArgs {
  /// The columns of the references table which will be included in the configured table.
  final pulumi.Input<List<String>> allowedColumns;
  /// The analysis method for the configured table. The only valid value is currently `DIRECT_QUERY`.
  final pulumi.Input<String> analysisMethod;
  /// A description for the configured table.
  final pulumi.Input<String>? description;
  /// The name of the configured table.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A reference to the AWS Glue table which will be used to create the configured table.
  /// * `table_reference.database_name` - (Required - Forces new resource) - The name of the AWS Glue database which contains the table.
  /// * `table_reference.table_name` - (Required - Forces new resource) - The name of the AWS Glue table which will be used to create the configured table.
  final pulumi.Input<ConfiguredTableTableReference> tableReference;
  /// Key value pairs which tag the configured table.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfiguredTableArgs].
  /// [allowedColumns] The columns of the references table which will be included in the configured table.
  /// [analysisMethod] The analysis method for the configured table. The only valid value is currently `DIRECT_QUERY`.
  /// [description] A description for the configured table.
  /// [name] The name of the configured table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableReference] A reference to the AWS Glue table which will be used to create the configured table.
  /// [tags] Key value pairs which tag the configured table.
  const ConfiguredTableArgs({
    required this.allowedColumns,
    required this.analysisMethod,
    this.description,
    this.name,
    this.region,
    required this.tableReference,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedColumns': allowedColumns,
      'analysisMethod': analysisMethod,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tableReference': pulumi.Input.mapInputValue<ConfiguredTableTableReference, Map<String, dynamic>>(tableReference, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ConfiguredTableArgs.fromMap(Map<String, dynamic> map) {
    return ConfiguredTableArgs(
      allowedColumns: pulumi.Input.fromValue((map['allowedColumns'] as List).cast<String>()),
      analysisMethod: pulumi.Input.fromValue(map['analysisMethod'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableReference: pulumi.Input.fromValue(ConfiguredTableTableReference.fromMap((map['tableReference']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
