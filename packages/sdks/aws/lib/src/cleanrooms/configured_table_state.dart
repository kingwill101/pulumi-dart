// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configured_table_table_reference.dart';

/// Input properties used for looking up and filtering ConfiguredTable resources.
class ConfiguredTableState {
  /// The columns of the references table which will be included in the configured table.
  final pulumi.Input<List<String>>? allowedColumns;
  /// The analysis method for the configured table. The only valid value is currently `DIRECT_QUERY`.
  final pulumi.Input<String>? analysisMethod;
  /// The ARN of the configured table.
  final pulumi.Input<String>? arn;
  /// The date and time the configured table was created.
  final pulumi.Input<String>? createTime;
  /// A description for the configured table.
  final pulumi.Input<String>? description;
  /// The name of the configured table.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A reference to the AWS Glue table which will be used to create the configured table.
  /// * `table_reference.database_name` - (Required - Forces new resource) - The name of the AWS Glue database which contains the table.
  /// * `table_reference.table_name` - (Required - Forces new resource) - The name of the AWS Glue table which will be used to create the configured table.
  final pulumi.Input<ConfiguredTableTableReference>? tableReference;
  /// Key value pairs which tag the configured table.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The date and time the configured table was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ConfiguredTableState].
  /// [allowedColumns] The columns of the references table which will be included in the configured table.
  /// [analysisMethod] The analysis method for the configured table. The only valid value is currently `DIRECT_QUERY`.
  /// [arn] The ARN of the configured table.
  /// [createTime] The date and time the configured table was created.
  /// [description] A description for the configured table.
  /// [name] The name of the configured table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableReference] A reference to the AWS Glue table which will be used to create the configured table.
  /// [tags] Key value pairs which tag the configured table.
  /// [tagsAll] Optional.
  /// [updateTime] The date and time the configured table was last updated.
  ConfiguredTableState({
    this.allowedColumns,
    this.analysisMethod,
    this.arn,
    this.createTime,
    this.description,
    this.name,
    this.region,
    this.tableReference,
    this.tags,
    this.tagsAll,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedColumns': ?allowedColumns,
      'analysisMethod': ?analysisMethod,
      'arn': ?arn,
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tableReference': ?pulumi.Input.mapOptionalInputValue<ConfiguredTableTableReference, Map<String, dynamic>>(tableReference, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updateTime': ?updateTime,
    };
  }

  factory ConfiguredTableState.fromMap(Map<String, dynamic> map) {
    return ConfiguredTableState(
      allowedColumns: map['allowedColumns'] == null ? null : ((map['allowedColumns'] as List).cast<String>()).input(),
      analysisMethod: map['analysisMethod'] == null ? null : (map['analysisMethod'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tableReference: map['tableReference'] == null ? null : (ConfiguredTableTableReference.fromMap((map['tableReference'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

