// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'operation_error_errors_item_response2.dart';

/// [Output Only] If errors are generated during processing of the operation, this field will be populated.
class OperationErrorResponse2 {
  /// The array of errors encountered while processing this operation.
  final List<OperationErrorErrorsItemResponse2> errors;

  OperationErrorResponse2({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] = Input.encodeList<OperationErrorErrorsItemResponse2,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory OperationErrorResponse2.fromMap(Map<String, dynamic> map) {
    return OperationErrorResponse2(
      errors: Input.decodeList<OperationErrorErrorsItemResponse2>(
          map['errors'],
          (value) => OperationErrorErrorsItemResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
