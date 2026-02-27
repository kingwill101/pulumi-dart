// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_gateway_spec_logging_access_log_file/get_virtual_gateway_spec_logging_access_log_file.dart';

class GetVirtualGatewaySpecLoggingAccessLog {
  final List<GetVirtualGatewaySpecLoggingAccessLogFile> files;

  GetVirtualGatewaySpecLoggingAccessLog({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecLoggingAccessLogFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecLoggingAccessLog.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLoggingAccessLog(
      files: pulumi.Input.decodeList<GetVirtualGatewaySpecLoggingAccessLogFile>(
          map['files'],
          (value) => GetVirtualGatewaySpecLoggingAccessLogFile.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
