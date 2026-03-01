// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_task_operation_response.dart';

/// The else block of storage task operation
class ElseConditionResponse {
  /// List of operations to execute in the else block
  final List<StorageTaskOperationResponse> operations;

  /// Creates a new [ElseConditionResponse].
  /// [operations] List of operations to execute in the else block
  ElseConditionResponse({
    required this.operations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operations': pulumi.Input.encodeList<StorageTaskOperationResponse, Map<String, dynamic>>(operations, (value) => value.toMap()),
    };
  }

  factory ElseConditionResponse.fromMap(Map<String, dynamic> map) {
    return ElseConditionResponse(
      operations: pulumi.Input.decodeList<StorageTaskOperationResponse>(map['operations'], (value) => StorageTaskOperationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

