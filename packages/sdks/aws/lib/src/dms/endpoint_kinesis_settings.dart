// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointKinesisSettings {
  /// Shows detailed control information for table definition, column definition, and table and column changes in the Kinesis message output. Default is `false`.
  final pulumi.Input<bool>? includeControlDetails;
  /// Include NULL and empty columns in the target. Default is `false`.
  final pulumi.Input<bool>? includeNullAndEmpty;
  /// Shows the partition value within the Kinesis message output, unless the partition type is schema-table-type. Default is `false`.
  final pulumi.Input<bool>? includePartitionValue;
  /// Includes any data definition language (DDL) operations that change the table in the control data. Default is `false`.
  final pulumi.Input<bool>? includeTableAlterOperations;
  /// Provides detailed transaction information from the source database. Default is `false`.
  final pulumi.Input<bool>? includeTransactionDetails;
  /// Output format for the records created. Default is `json`. Valid values are `json` and `json-unformatted` (a single line with no tab).
  final pulumi.Input<String>? messageFormat;
  /// Prefixes schema and table names to partition values, when the partition type is primary-key-type. Default is `false`.
  final pulumi.Input<bool>? partitionIncludeSchemaTable;
  /// ARN of the IAM Role with permissions to write to the Kinesis data stream.
  final pulumi.Input<String>? serviceAccessRoleArn;
  /// ARN of the Kinesis data stream.
  final pulumi.Input<String>? streamArn;
  /// Use up to 18 digit int instead of casting ints as doubles, available from AWS DMS version 3.5.4. Default is `false`.
  final pulumi.Input<bool>? useLargeIntegerValue;

  /// Creates a new [EndpointKinesisSettings].
  /// [includeControlDetails] Shows detailed control information for table definition, column definition, and table and column changes in the Kinesis message output. Default is `false`.
  /// [includeNullAndEmpty] Include NULL and empty columns in the target. Default is `false`.
  /// [includePartitionValue] Shows the partition value within the Kinesis message output, unless the partition type is schema-table-type. Default is `false`.
  /// [includeTableAlterOperations] Includes any data definition language (DDL) operations that change the table in the control data. Default is `false`.
  /// [includeTransactionDetails] Provides detailed transaction information from the source database. Default is `false`.
  /// [messageFormat] Output format for the records created. Default is `json`. Valid values are `json` and `json-unformatted` (a single line with no tab).
  /// [partitionIncludeSchemaTable] Prefixes schema and table names to partition values, when the partition type is primary-key-type. Default is `false`.
  /// [serviceAccessRoleArn] ARN of the IAM Role with permissions to write to the Kinesis data stream.
  /// [streamArn] ARN of the Kinesis data stream.
  /// [useLargeIntegerValue] Use up to 18 digit int instead of casting ints as doubles, available from AWS DMS version 3.5.4. Default is `false`.
  EndpointKinesisSettings({
    this.includeControlDetails,
    this.includeNullAndEmpty,
    this.includePartitionValue,
    this.includeTableAlterOperations,
    this.includeTransactionDetails,
    this.messageFormat,
    this.partitionIncludeSchemaTable,
    this.serviceAccessRoleArn,
    this.streamArn,
    this.useLargeIntegerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeControlDetails': ?includeControlDetails,
      'includeNullAndEmpty': ?includeNullAndEmpty,
      'includePartitionValue': ?includePartitionValue,
      'includeTableAlterOperations': ?includeTableAlterOperations,
      'includeTransactionDetails': ?includeTransactionDetails,
      'messageFormat': ?messageFormat,
      'partitionIncludeSchemaTable': ?partitionIncludeSchemaTable,
      'serviceAccessRoleArn': ?serviceAccessRoleArn,
      'streamArn': ?streamArn,
      'useLargeIntegerValue': ?useLargeIntegerValue,
    };
  }

  factory EndpointKinesisSettings.fromMap(Map<String, dynamic> map) {
    return EndpointKinesisSettings(
      includeControlDetails: map['includeControlDetails'] == null ? null : ((map['includeControlDetails'] as bool).input()).input(),
      includeNullAndEmpty: map['includeNullAndEmpty'] == null ? null : ((map['includeNullAndEmpty'] as bool).input()).input(),
      includePartitionValue: map['includePartitionValue'] == null ? null : ((map['includePartitionValue'] as bool).input()).input(),
      includeTableAlterOperations: map['includeTableAlterOperations'] == null ? null : ((map['includeTableAlterOperations'] as bool).input()).input(),
      includeTransactionDetails: map['includeTransactionDetails'] == null ? null : ((map['includeTransactionDetails'] as bool).input()).input(),
      messageFormat: map['messageFormat'] == null ? null : ((map['messageFormat'] as String).input()).input(),
      partitionIncludeSchemaTable: map['partitionIncludeSchemaTable'] == null ? null : ((map['partitionIncludeSchemaTable'] as bool).input()).input(),
      serviceAccessRoleArn: map['serviceAccessRoleArn'] == null ? null : ((map['serviceAccessRoleArn'] as String).input()).input(),
      streamArn: map['streamArn'] == null ? null : ((map['streamArn'] as String).input()).input(),
      useLargeIntegerValue: map['useLargeIntegerValue'] == null ? null : ((map['useLargeIntegerValue'] as bool).input()).input(),
    );
  }
}

