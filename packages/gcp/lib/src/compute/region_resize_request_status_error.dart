// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_error_error.dart';

class RegionResizeRequestStatusError {
  /// (Output)
  /// The array of errors encountered while processing this operation.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusErrorError>? errors;

  /// Creates a new [RegionResizeRequestStatusError].
  /// [errors] (Output)
  RegionResizeRequestStatusError({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorsValue = errors;
    if (errorsValue != null) {
      map['errors'] = pulumi.Input.encodeList<
          RegionResizeRequestStatusErrorError,
          Map<String, dynamic>>(errorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionResizeRequestStatusError.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusError(
      errors: map['errors'] == null
          ? null
          : pulumi.Input.decodeList<RegionResizeRequestStatusErrorError>(
              map['errors'],
              (value) => RegionResizeRequestStatusErrorError.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
