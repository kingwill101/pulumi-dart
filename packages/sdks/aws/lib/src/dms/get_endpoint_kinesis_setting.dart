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
  const GetEndpointKinesisSetting({
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
      includeControlDetails: pulumi.Input.fromValue(map['includeControlDetails'] as bool),
      includeNullAndEmpty: pulumi.Input.fromValue(map['includeNullAndEmpty'] as bool),
      includePartitionValue: pulumi.Input.fromValue(map['includePartitionValue'] as bool),
      includeTableAlterOperations: pulumi.Input.fromValue(map['includeTableAlterOperations'] as bool),
      includeTransactionDetails: pulumi.Input.fromValue(map['includeTransactionDetails'] as bool),
      messageFormat: pulumi.Input.fromValue(map['messageFormat'] as String),
      partitionIncludeSchemaTable: pulumi.Input.fromValue(map['partitionIncludeSchemaTable'] as bool),
      serviceAccessRoleArn: pulumi.Input.fromValue(map['serviceAccessRoleArn'] as String),
      streamArn: pulumi.Input.fromValue(map['streamArn'] as String),
      useLargeIntegerValue: pulumi.Input.fromValue(map['useLargeIntegerValue'] as bool),
    );
  }
}

