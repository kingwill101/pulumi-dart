// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_logging_access_log_file_format.dart';

class VirtualGatewaySpecLoggingAccessLogFile {
  /// Specified format for the logs. See `format` Block for details.
  final pulumi.Input<VirtualGatewaySpecLoggingAccessLogFileFormat?>? format;
  final pulumi.Input<String> path;

  /// Creates a new [VirtualGatewaySpecLoggingAccessLogFile].
  /// [format] Specified format for the logs. See `format` Block for details.
  /// [path] Required.
  const VirtualGatewaySpecLoggingAccessLogFile({
    this.format,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecLoggingAccessLogFileFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'path': path,
    };
  }

  factory VirtualGatewaySpecLoggingAccessLogFile.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecLoggingAccessLogFile(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecLoggingAccessLogFileFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
