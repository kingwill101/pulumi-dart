// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_logging_access_log.dart';

class GetVirtualGatewaySpecLogging {
  final pulumi.Input<List<GetVirtualGatewaySpecLoggingAccessLog>> accessLogs;

  /// Creates a new [GetVirtualGatewaySpecLogging].
  /// [accessLogs] Required.
  GetVirtualGatewaySpecLogging({
    required this.accessLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecLoggingAccessLog>, List<Map<String, dynamic>>>(accessLogs, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecLoggingAccessLog, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualGatewaySpecLogging.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLogging(
      accessLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecLoggingAccessLog>(map['accessLogs']!, (value) => GetVirtualGatewaySpecLoggingAccessLog.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

