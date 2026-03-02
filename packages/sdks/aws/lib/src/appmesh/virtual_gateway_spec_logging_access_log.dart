// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_logging_access_log_file.dart';

class VirtualGatewaySpecLoggingAccessLog {
  /// File object to send virtual gateway access logs to.
  final pulumi.Input<VirtualGatewaySpecLoggingAccessLogFile>? file;

  /// Creates a new [VirtualGatewaySpecLoggingAccessLog].
  /// [file] File object to send virtual gateway access logs to.
  VirtualGatewaySpecLoggingAccessLog({
    this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecLoggingAccessLogFile, Map<String, dynamic>>(file, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecLoggingAccessLog.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecLoggingAccessLog(
      file: map['file'] == null ? null : (VirtualGatewaySpecLoggingAccessLogFile.fromMap((map['file'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

