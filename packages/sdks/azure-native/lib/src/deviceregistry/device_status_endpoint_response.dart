// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_error_response.dart';

/// Defines the device status properties.
class DeviceStatusEndpointResponse {
  /// Defines the error related to this endpoint.
  final pulumi.Input<StatusErrorResponse> error;

  /// Creates a new [DeviceStatusEndpointResponse].
  /// [error] Defines the error related to this endpoint.
  const DeviceStatusEndpointResponse({
    required this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<StatusErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
    };
  }

  factory DeviceStatusEndpointResponse.fromMap(Map<String, dynamic> map) {
    return DeviceStatusEndpointResponse(
      error: pulumi.Input.fromValue(StatusErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
    );
  }
}

