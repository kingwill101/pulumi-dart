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
  const EndpointKinesisSettings({
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
      includeControlDetails: (() { final guardedValue = map['includeControlDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeNullAndEmpty: (() { final guardedValue = map['includeNullAndEmpty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includePartitionValue: (() { final guardedValue = map['includePartitionValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeTableAlterOperations: (() { final guardedValue = map['includeTableAlterOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeTransactionDetails: (() { final guardedValue = map['includeTransactionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      messageFormat: (() { final guardedValue = map['messageFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionIncludeSchemaTable: (() { final guardedValue = map['partitionIncludeSchemaTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccessRoleArn: (() { final guardedValue = map['serviceAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamArn: (() { final guardedValue = map['streamArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useLargeIntegerValue: (() { final guardedValue = map['useLargeIntegerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
