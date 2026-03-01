// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_error.dart';
import 'resize_request_status_last_attempt.dart';

class ResizeRequestStatus {
  /// (Output)
  /// Fatal errors encountered during the queueing or provisioning phases of the ResizeRequest that caused the transition to the FAILED state. Contrary to the lastAttempt errors, this field is final and errors are never removed from here, as the ResizeRequest is not going to retry.
  /// Structure is documented below.
  final List<ResizeRequestStatusError>? errors;

  /// (Output)
  /// Information about the last attempt to fulfill the request. The value is temporary since the ResizeRequest can retry, as long as it's still active and the last attempt value can either be cleared or replaced with a different error. Since ResizeRequest retries infrequently, the value may be stale and no longer show an active problem. The value is cleared when ResizeRequest transitions to the final state (becomes inactive). If the final state is FAILED the error describing it will be storred in the "error" field only.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttempt>? lastAttempts;

  /// Creates a new [ResizeRequestStatus].
  /// [errors] (Output)
  /// [lastAttempts] (Output)
  ResizeRequestStatus({this.errors, this.lastAttempts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null
          ? null
          : pulumi.Input.encodeList<
              ResizeRequestStatusError,
              Map<String, dynamic>
            >(errors!, (value) => value.toMap()),
      'lastAttempts': ?lastAttempts == null
          ? null
          : pulumi.Input.encodeList<
              ResizeRequestStatusLastAttempt,
              Map<String, dynamic>
            >(lastAttempts!, (value) => value.toMap()),
    };
  }

  factory ResizeRequestStatus.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatus(
      errors: map['errors'] == null
          ? null
          : pulumi.Input.decodeList<ResizeRequestStatusError>(
              map['errors'],
              (value) => ResizeRequestStatusError.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      lastAttempts: map['lastAttempts'] == null
          ? null
          : pulumi.Input.decodeList<ResizeRequestStatusLastAttempt>(
              map['lastAttempts'],
              (value) => ResizeRequestStatusLastAttempt.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
