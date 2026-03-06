// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_logging_access_log.dart';

class VirtualGatewaySpecLogging {
  /// Access log configuration for a virtual gateway.
  final pulumi.Input<VirtualGatewaySpecLoggingAccessLog>? accessLog;

  /// Creates a new [VirtualGatewaySpecLogging].
  /// [accessLog] Access log configuration for a virtual gateway.
  const VirtualGatewaySpecLogging({
    this.accessLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLog': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecLoggingAccessLog, Map<String, dynamic>>(accessLog, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecLogging.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecLogging(
      accessLog: (() { final guardedValue = map['accessLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecLoggingAccessLog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

