// ignore_for_file: unused_element, unnecessary_cast

import 'http_config_http_enabled_state.dart';

/// The configuration of the HTTP bridge for a device registry.
class HttpConfig {
  /// If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
  final HttpConfigHttpEnabledState? httpEnabledState;

  /// Creates a new [HttpConfig].
  /// [httpEnabledState] If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
  HttpConfig({
    this.httpEnabledState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpEnabledStateValue = httpEnabledState;
    if (httpEnabledStateValue != null) {
      map['httpEnabledState'] = httpEnabledStateValue.value;
    }
    return map;
  }

  factory HttpConfig.fromMap(Map<String, dynamic> map) {
    return HttpConfig(
      httpEnabledState: map['httpEnabledState'] == null
          ? null
          : HttpConfigHttpEnabledState.fromValue(
              map['httpEnabledState'] as String),
    );
  }
}
