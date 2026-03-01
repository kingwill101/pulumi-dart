// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_error.dart';
import 'region_resize_request_status_last_attempt.dart';

class RegionResizeRequestStatus {
  /// (Output)
  /// Fatal errors encountered during the queueing or provisioning phases of the ResizeRequest that caused the transition to the FAILED state. Contrary to the lastAttempt errors, this field is final and errors are never removed from here, as the ResizeRequest is not going to retry.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusError>? errors;

  /// (Output)
  /// Information about the last attempt to fulfill the request. The value is temporary since the ResizeRequest can retry, as long as it's still active and the last attempt value can either be cleared or replaced with a different error. Since ResizeRequest retries infrequently, the value may be stale and no longer show an active problem. The value is cleared when ResizeRequest transitions to the final state (becomes inactive). If the final state is FAILED the error describing it will be storred in the "error" field only.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusLastAttempt>? lastAttempts;

  /// Creates a new [RegionResizeRequestStatus].
  /// [errors] (Output)
  /// [lastAttempts] (Output)
  RegionResizeRequestStatus({this.errors, this.lastAttempts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null
          ? null
          : pulumi.Input.encodeList<
              RegionResizeRequestStatusError,
              Map<String, dynamic>
            >(errors!, (value) => value.toMap()),
      'lastAttempts': ?lastAttempts == null
          ? null
          : pulumi.Input.encodeList<
              RegionResizeRequestStatusLastAttempt,
              Map<String, dynamic>
            >(lastAttempts!, (value) => value.toMap()),
    };
  }

  factory RegionResizeRequestStatus.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatus(
      errors: map['errors'] == null
          ? null
          : pulumi.Input.decodeList<RegionResizeRequestStatusError>(
              map['errors'],
              (value) => RegionResizeRequestStatusError.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      lastAttempts: map['lastAttempts'] == null
          ? null
          : pulumi.Input.decodeList<RegionResizeRequestStatusLastAttempt>(
              map['lastAttempts'],
              (value) => RegionResizeRequestStatusLastAttempt.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
