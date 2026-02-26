// ignore_for_file: unused_element, unnecessary_cast

class EndpointKinesisSettings {
  /// Shows detailed control information for table definition, column definition, and table and column changes in the Kinesis message output. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includeControlDetails;

  /// Include NULL and empty columns in the target. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includeNullAndEmpty;

  /// Shows the partition value within the Kinesis message output, unless the partition type is schema-table-type. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includePartitionValue;

  /// Includes any data definition language (DDL) operations that change the table in the control data. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includeTableAlterOperations;

  /// Provides detailed transaction information from the source database. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includeTransactionDetails;

  /// Output format for the records created. Default is <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span>. Valid values are <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span> and `json-unformatted` (a single line with no tab).
  final String? messageFormat;

  /// Prefixes schema and table names to partition values, when the partition type is primary-key-type. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? partitionIncludeSchemaTable;

  /// ARN of the IAM Role with permissions to write to the Kinesis data stream.
  final String? serviceAccessRoleArn;

  /// ARN of the Kinesis data stream.
  final String? streamArn;

  /// Use up to 18 digit int instead of casting ints as doubles, available from AWS DMS version 3.5.4. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? useLargeIntegerValue;

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
    final map = <String, dynamic>{};
    final includeControlDetailsValue = includeControlDetails;
    if (includeControlDetailsValue != null) {
      map['includeControlDetails'] = includeControlDetailsValue;
    }
    final includeNullAndEmptyValue = includeNullAndEmpty;
    if (includeNullAndEmptyValue != null) {
      map['includeNullAndEmpty'] = includeNullAndEmptyValue;
    }
    final includePartitionValueValue = includePartitionValue;
    if (includePartitionValueValue != null) {
      map['includePartitionValue'] = includePartitionValueValue;
    }
    final includeTableAlterOperationsValue = includeTableAlterOperations;
    if (includeTableAlterOperationsValue != null) {
      map['includeTableAlterOperations'] = includeTableAlterOperationsValue;
    }
    final includeTransactionDetailsValue = includeTransactionDetails;
    if (includeTransactionDetailsValue != null) {
      map['includeTransactionDetails'] = includeTransactionDetailsValue;
    }
    final messageFormatValue = messageFormat;
    if (messageFormatValue != null) {
      map['messageFormat'] = messageFormatValue;
    }
    final partitionIncludeSchemaTableValue = partitionIncludeSchemaTable;
    if (partitionIncludeSchemaTableValue != null) {
      map['partitionIncludeSchemaTable'] = partitionIncludeSchemaTableValue;
    }
    final serviceAccessRoleArnValue = serviceAccessRoleArn;
    if (serviceAccessRoleArnValue != null) {
      map['serviceAccessRoleArn'] = serviceAccessRoleArnValue;
    }
    final streamArnValue = streamArn;
    if (streamArnValue != null) {
      map['streamArn'] = streamArnValue;
    }
    final useLargeIntegerValueValue = useLargeIntegerValue;
    if (useLargeIntegerValueValue != null) {
      map['useLargeIntegerValue'] = useLargeIntegerValueValue;
    }
    return map;
  }

  factory EndpointKinesisSettings.fromMap(Map<String, dynamic> map) {
    return EndpointKinesisSettings(
      includeControlDetails: map['includeControlDetails'] == null
          ? null
          : map['includeControlDetails'] as bool,
      includeNullAndEmpty: map['includeNullAndEmpty'] == null
          ? null
          : map['includeNullAndEmpty'] as bool,
      includePartitionValue: map['includePartitionValue'] == null
          ? null
          : map['includePartitionValue'] as bool,
      includeTableAlterOperations: map['includeTableAlterOperations'] == null
          ? null
          : map['includeTableAlterOperations'] as bool,
      includeTransactionDetails: map['includeTransactionDetails'] == null
          ? null
          : map['includeTransactionDetails'] as bool,
      messageFormat:
          map['messageFormat'] == null ? null : map['messageFormat'] as String,
      partitionIncludeSchemaTable: map['partitionIncludeSchemaTable'] == null
          ? null
          : map['partitionIncludeSchemaTable'] as bool,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] == null
          ? null
          : map['serviceAccessRoleArn'] as String,
      streamArn: map['streamArn'] == null ? null : map['streamArn'] as String,
      useLargeIntegerValue: map['useLargeIntegerValue'] == null
          ? null
          : map['useLargeIntegerValue'] as bool,
    );
  }
}
