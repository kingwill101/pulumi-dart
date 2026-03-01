// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_last_attempt_error.dart';

class ResizeRequestStatusLastAttempt {
  /// (Output)
  /// Fatal errors encountered during the queueing or provisioning phases of the ResizeRequest that caused the transition to the FAILED state. Contrary to the lastAttempt errors, this field is final and errors are never removed from here, as the ResizeRequest is not going to retry.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptError>? errors;

  /// Creates a new [ResizeRequestStatusLastAttempt].
  /// [errors] (Output)
  ResizeRequestStatusLastAttempt({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null ? null : pulumi.Input.encodeList<ResizeRequestStatusLastAttemptError, Map<String, dynamic>>(errors!, (value) => value.toMap()),
    };
  }

  factory ResizeRequestStatusLastAttempt.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttempt(
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<ResizeRequestStatusLastAttemptError>(map['errors'], (value) => ResizeRequestStatusLastAttemptError.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

