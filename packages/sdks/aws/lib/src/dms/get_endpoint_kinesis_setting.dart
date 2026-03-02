// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointKinesisSetting {
  final pulumi.Input<bool> includeControlDetails;
  final pulumi.Input<bool> includeNullAndEmpty;
  final pulumi.Input<bool> includePartitionValue;
  final pulumi.Input<bool> includeTableAlterOperations;
  final pulumi.Input<bool> includeTransactionDetails;
  final pulumi.Input<String> messageFormat;
  final pulumi.Input<bool> partitionIncludeSchemaTable;
  final pulumi.Input<String> serviceAccessRoleArn;
  final pulumi.Input<String> streamArn;
  final pulumi.Input<bool> useLargeIntegerValue;

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
      includeControlDetails: (map['includeControlDetails'] as bool).input(),
      includeNullAndEmpty: (map['includeNullAndEmpty'] as bool).input(),
      includePartitionValue: (map['includePartitionValue'] as bool).input(),
      includeTableAlterOperations: (map['includeTableAlterOperations'] as bool).input(),
      includeTransactionDetails: (map['includeTransactionDetails'] as bool).input(),
      messageFormat: (map['messageFormat'] as String).input(),
      partitionIncludeSchemaTable: (map['partitionIncludeSchemaTable'] as bool).input(),
      serviceAccessRoleArn: (map['serviceAccessRoleArn'] as String).input(),
      streamArn: (map['streamArn'] as String).input(),
      useLargeIntegerValue: (map['useLargeIntegerValue'] as bool).input(),
    );
  }
}

