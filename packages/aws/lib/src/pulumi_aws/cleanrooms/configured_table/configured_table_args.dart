// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../configured_table_table_reference/configured_table_table_reference.dart';

/// The set of arguments for ConfiguredTable.
class ConfiguredTableArgs {
  /// The columns of the references table which will be included in the configured table.
  final Input<List<String>> allowedColumns;

  /// The analysis method for the configured table. The only valid value is currently `DIRECT_QUERY`.
  final Input<String> analysisMethod;

  /// A description for the configured table.
  final Input<String>? description;

  /// The name of the configured table.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A reference to the AWS Glue table which will be used to create the configured table.
  /// * `table_reference.database_name` - (Required - Forces new resource) - The name of the AWS Glue database which contains the table.
  /// * `table_reference.table_name` - (Required - Forces new resource) - The name of the AWS Glue table which will be used to create the configured table.
  final Input<ConfiguredTableTableReference> tableReference;

  /// Key value pairs which tag the configured table.
  final Input<Map<String, String>>? tags;

  ConfiguredTableArgs({
    required this.allowedColumns,
    required this.analysisMethod,
    this.description,
    this.name,
    this.region,
    required this.tableReference,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedColumns'] = allowedColumns;
    map['analysisMethod'] = analysisMethod;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableReference'] = Input.mapInputValue<ConfiguredTableTableReference,
        Map<String, dynamic>>(tableReference, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ConfiguredTableArgs.fromMap(Map<String, dynamic> map) {
    return ConfiguredTableArgs(
      allowedColumns: Input.asInput<List<String>>(map['allowedColumns']),
      analysisMethod: Input.asInput<String>(map['analysisMethod']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tableReference:
          Input.asInput<ConfiguredTableTableReference>(map['tableReference']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
