// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'operation_error_errors_item_response3.dart';

/// [Output Only] If errors are generated during processing of the operation, this field will be populated.
class OperationErrorResponse3 {
  /// The array of errors encountered while processing this operation.
  final List<OperationErrorErrorsItemResponse3> errors;

  OperationErrorResponse3({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] = Input.encodeList<OperationErrorErrorsItemResponse3,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory OperationErrorResponse3.fromMap(Map<String, dynamic> map) {
    return OperationErrorResponse3(
      errors: Input.decodeList<OperationErrorErrorsItemResponse3>(
          map['errors'],
          (value) => OperationErrorErrorsItemResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
