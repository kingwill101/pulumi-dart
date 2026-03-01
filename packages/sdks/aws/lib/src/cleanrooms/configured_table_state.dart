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
    pulumi.Output<List<String>>? allowedColumns,
    pulumi.Output<String>? analysisMethod,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<ConfiguredTableTableReference>? tableReference,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updateTime,
  }) :
      allowedColumns = pulumi.Input.asOptionalInput<List<String>>(allowedColumns),
      analysisMethod = pulumi.Input.asOptionalInput<String>(analysisMethod),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tableReference = pulumi.Input.asOptionalInput<ConfiguredTableTableReference>(tableReference),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      allowedColumns: map['allowedColumns'] == null ? null : pulumi.Output.create<List<String>>((map['allowedColumns'] as List).cast<String>()),
      analysisMethod: map['analysisMethod'] == null ? null : pulumi.Output.create<String>(map['analysisMethod'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tableReference: map['tableReference'] == null ? null : pulumi.Output.create<ConfiguredTableTableReference>(ConfiguredTableTableReference.fromMap((map['tableReference'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

