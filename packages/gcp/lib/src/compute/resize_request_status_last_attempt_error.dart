// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_last_attempt_error_error.dart';

class ResizeRequestStatusLastAttemptError {
  /// (Output)
  /// The array of errors encountered while processing this operation.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorError>? errors;

  /// Creates a new [ResizeRequestStatusLastAttemptError].
  /// [errors] (Output)
  ResizeRequestStatusLastAttemptError({this.errors});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null
          ? null
          : pulumi.Input.encodeList<
              ResizeRequestStatusLastAttemptErrorError,
              Map<String, dynamic>
            >(errors!, (value) => value.toMap()),
    };
  }

  factory ResizeRequestStatusLastAttemptError.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResizeRequestStatusLastAttemptError(
      errors: map['errors'] == null
          ? null
          : pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorError>(
              map['errors'],
              (value) => ResizeRequestStatusLastAttemptErrorError.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
