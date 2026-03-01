// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_last_attempt_error.dart';

class RegionResizeRequestStatusLastAttempt {
  /// (Output)
  /// Fatal errors encountered during the queueing or provisioning phases of the ResizeRequest that caused the transition to the FAILED state. Contrary to the lastAttempt errors, this field is final and errors are never removed from here, as the ResizeRequest is not going to retry.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusLastAttemptError>? errors;

  /// Creates a new [RegionResizeRequestStatusLastAttempt].
  /// [errors] (Output)
  RegionResizeRequestStatusLastAttempt({this.errors});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null
          ? null
          : pulumi.Input.encodeList<
              RegionResizeRequestStatusLastAttemptError,
              Map<String, dynamic>
            >(errors!, (value) => value.toMap()),
    };
  }

  factory RegionResizeRequestStatusLastAttempt.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionResizeRequestStatusLastAttempt(
      errors: map['errors'] == null
          ? null
          : pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptError>(
              map['errors'],
              (value) => RegionResizeRequestStatusLastAttemptError.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
