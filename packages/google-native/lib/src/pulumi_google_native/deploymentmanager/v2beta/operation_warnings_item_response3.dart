// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'operation_warnings_item_data_item_response3.dart';

class OperationWarningsItemResponse3 {
  /// A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;

  /// Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  final List<OperationWarningsItemDataItemResponse3> data;

  /// A human-readable description of the warning code.
  final String message;

  OperationWarningsItemResponse3({
    required this.code,
    required this.data,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['data'] = Input.encodeList<OperationWarningsItemDataItemResponse3,
        Map<String, dynamic>>(data, (value) => value.toMap());
    map['message'] = message;
    return map;
  }

  factory OperationWarningsItemResponse3.fromMap(Map<String, dynamic> map) {
    return OperationWarningsItemResponse3(
      code: map['code'] as String,
      data: Input.decodeList<OperationWarningsItemDataItemResponse3>(
          map['data'],
          (value) => OperationWarningsItemDataItemResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}
