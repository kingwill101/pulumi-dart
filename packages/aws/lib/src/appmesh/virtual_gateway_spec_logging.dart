// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_logging_access_log.dart';

class VirtualGatewaySpecLogging {
  /// Access log configuration for a virtual gateway.
  final VirtualGatewaySpecLoggingAccessLog? accessLog;

  /// Creates a new [VirtualGatewaySpecLogging].
  /// [accessLog] Access log configuration for a virtual gateway.
  VirtualGatewaySpecLogging({
    this.accessLog,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLogValue = accessLog;
    if (accessLogValue != null) {
      map['accessLog'] = accessLogValue.toMap();
    }
    return map;
  }

  factory VirtualGatewaySpecLogging.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecLogging(
      accessLog: map['accessLog'] == null
          ? null
          : VirtualGatewaySpecLoggingAccessLog.fromMap(
              (map['accessLog'] as Map).cast<String, dynamic>()),
    );
  }
}
