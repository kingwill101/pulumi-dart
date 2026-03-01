// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_logging_access_log_file.dart';

class VirtualGatewaySpecLoggingAccessLog {
  /// File object to send virtual gateway access logs to.
  final VirtualGatewaySpecLoggingAccessLogFile? file;

  /// Creates a new [VirtualGatewaySpecLoggingAccessLog].
  /// [file] File object to send virtual gateway access logs to.
  VirtualGatewaySpecLoggingAccessLog({this.file});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'file': ?file == null ? null : file!.toMap()};
  }

  factory VirtualGatewaySpecLoggingAccessLog.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecLoggingAccessLog(
      file: map['file'] == null
          ? null
          : VirtualGatewaySpecLoggingAccessLogFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
