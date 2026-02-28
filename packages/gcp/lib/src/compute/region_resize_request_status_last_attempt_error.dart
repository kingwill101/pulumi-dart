// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_last_attempt_error_error.dart';

class RegionResizeRequestStatusLastAttemptError {
  /// (Output)
  /// The array of errors encountered while processing this operation.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusLastAttemptErrorError>? errors;

  /// Creates a new [RegionResizeRequestStatusLastAttemptError].
  /// [errors] (Output)
  RegionResizeRequestStatusLastAttemptError({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorsValue = errors;
    if (errorsValue != null) {
      map['errors'] = pulumi.Input.encodeList<
          RegionResizeRequestStatusLastAttemptErrorError,
          Map<String, dynamic>>(errorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionResizeRequestStatusLastAttemptError.fromMap(
      Map<String, dynamic> map) {
    return RegionResizeRequestStatusLastAttemptError(
      errors: map['errors'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionResizeRequestStatusLastAttemptErrorError>(
              map['errors'],
              (value) => RegionResizeRequestStatusLastAttemptErrorError.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
