// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_gateway_spec_logging_access_log/get_virtual_gateway_spec_logging_access_log.dart';

class GetVirtualGatewaySpecLogging {
  final List<GetVirtualGatewaySpecLoggingAccessLog> accessLogs;

  GetVirtualGatewaySpecLogging({
    required this.accessLogs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessLogs'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecLoggingAccessLog,
        Map<String, dynamic>>(accessLogs, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecLogging.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLogging(
      accessLogs:
          pulumi.Input.decodeList<GetVirtualGatewaySpecLoggingAccessLog>(
              map['accessLogs'],
              (value) => GetVirtualGatewaySpecLoggingAccessLog.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
