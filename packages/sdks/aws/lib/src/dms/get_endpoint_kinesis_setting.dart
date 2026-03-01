// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointKinesisSetting {
  final bool includeControlDetails;
  final bool includeNullAndEmpty;
  final bool includePartitionValue;
  final bool includeTableAlterOperations;
  final bool includeTransactionDetails;
  final String messageFormat;
  final bool partitionIncludeSchemaTable;
  final String serviceAccessRoleArn;
  final String streamArn;
  final bool useLargeIntegerValue;

  /// Creates a new [GetEndpointKinesisSetting].
  /// [includeControlDetails] Required.
  /// [includeNullAndEmpty] Required.
  /// [includePartitionValue] Required.
  /// [includeTableAlterOperations] Required.
  /// [includeTransactionDetails] Required.
  /// [messageFormat] Required.
  /// [partitionIncludeSchemaTable] Required.
  /// [serviceAccessRoleArn] Required.
  /// [streamArn] Required.
  /// [useLargeIntegerValue] Required.
  GetEndpointKinesisSetting({
    required this.includeControlDetails,
    required this.includeNullAndEmpty,
    required this.includePartitionValue,
    required this.includeTableAlterOperations,
    required this.includeTransactionDetails,
    required this.messageFormat,
    required this.partitionIncludeSchemaTable,
    required this.serviceAccessRoleArn,
    required this.streamArn,
    required this.useLargeIntegerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeControlDetails': includeControlDetails,
      'includeNullAndEmpty': includeNullAndEmpty,
      'includePartitionValue': includePartitionValue,
      'includeTableAlterOperations': includeTableAlterOperations,
      'includeTransactionDetails': includeTransactionDetails,
      'messageFormat': messageFormat,
      'partitionIncludeSchemaTable': partitionIncludeSchemaTable,
      'serviceAccessRoleArn': serviceAccessRoleArn,
      'streamArn': streamArn,
      'useLargeIntegerValue': useLargeIntegerValue,
    };
  }

  factory GetEndpointKinesisSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointKinesisSetting(
      includeControlDetails: map['includeControlDetails'] as bool,
      includeNullAndEmpty: map['includeNullAndEmpty'] as bool,
      includePartitionValue: map['includePartitionValue'] as bool,
      includeTableAlterOperations: map['includeTableAlterOperations'] as bool,
      includeTransactionDetails: map['includeTransactionDetails'] as bool,
      messageFormat: map['messageFormat'] as String,
      partitionIncludeSchemaTable: map['partitionIncludeSchemaTable'] as bool,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] as String,
      streamArn: map['streamArn'] as String,
      useLargeIntegerValue: map['useLargeIntegerValue'] as bool,
    );
  }
}

