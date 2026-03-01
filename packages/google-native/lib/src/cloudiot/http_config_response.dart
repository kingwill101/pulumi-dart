// ignore_for_file: unused_element, unnecessary_cast

/// The configuration of the HTTP bridge for a device registry.
class HttpConfigResponse {
  /// If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
  final String httpEnabledState;

  /// Creates a new [HttpConfigResponse].
  /// [httpEnabledState] If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
  HttpConfigResponse({required this.httpEnabledState});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'httpEnabledState': httpEnabledState};
  }

  factory HttpConfigResponse.fromMap(Map<String, dynamic> map) {
    return HttpConfigResponse(
      httpEnabledState: map['httpEnabledState'] as String,
    );
  }
}
