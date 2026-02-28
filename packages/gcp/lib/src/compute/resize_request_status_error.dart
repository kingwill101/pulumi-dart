// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_error_error.dart';

class ResizeRequestStatusError {
  /// (Output)
  /// The array of errors encountered while processing this operation.
  /// Structure is documented below.
  final List<ResizeRequestStatusErrorError>? errors;

  /// Creates a new [ResizeRequestStatusError].
  /// [errors] (Output)
  ResizeRequestStatusError({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorsValue = errors;
    if (errorsValue != null) {
      map['errors'] = pulumi.Input.encodeList<ResizeRequestStatusErrorError,
          Map<String, dynamic>>(errorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResizeRequestStatusError.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusError(
      errors: map['errors'] == null
          ? null
          : pulumi.Input.decodeList<ResizeRequestStatusErrorError>(
              map['errors'],
              (value) => ResizeRequestStatusErrorError.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
