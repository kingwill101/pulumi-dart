// ignore_for_file: unused_element, unnecessary_cast

import 'status_error_response.dart';

/// Defines the device status properties.
class DeviceStatusEndpointResponse {
  /// Defines the error related to this endpoint.
  final StatusErrorResponse error;

  /// Creates a new [DeviceStatusEndpointResponse].
  /// [error] Defines the error related to this endpoint.
  DeviceStatusEndpointResponse({
    required this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
    };
  }

  factory DeviceStatusEndpointResponse.fromMap(Map<String, dynamic> map) {
    return DeviceStatusEndpointResponse(
      error: StatusErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
    );
  }
}

