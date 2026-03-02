// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// details of validation failure
class HciValidationFailureDetailResponse {
  /// Exception details while installing extension.
  final pulumi.Input<String> exception;

  /// Creates a new [HciValidationFailureDetailResponse].
  /// [exception] Exception details while installing extension.
  HciValidationFailureDetailResponse({
    required this.exception,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exception': exception,
    };
  }

  factory HciValidationFailureDetailResponse.fromMap(Map<String, dynamic> map) {
    return HciValidationFailureDetailResponse(
      exception: (map['exception'] as String).input(),
    );
  }
}

