// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// details of validation failure
class ErrorDetailHciEdgeDeviceResponse {
  /// Exception details while installing extension.
  final pulumi.Input<String> exception;

  /// Creates a new [ErrorDetailHciEdgeDeviceResponse].
  /// [exception] Exception details while installing extension.
  const ErrorDetailHciEdgeDeviceResponse({
    required this.exception,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exception': exception,
    };
  }

  factory ErrorDetailHciEdgeDeviceResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDetailHciEdgeDeviceResponse(
      exception: pulumi.Input.fromValue(map['exception'] as String),
    );
  }
}
