// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_logging_access_log_file.dart';

class GetVirtualGatewaySpecLoggingAccessLog {
  final pulumi.Input<List<GetVirtualGatewaySpecLoggingAccessLogFile>> files;

  /// Creates a new [GetVirtualGatewaySpecLoggingAccessLog].
  /// [files] Required.
  GetVirtualGatewaySpecLoggingAccessLog({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecLoggingAccessLogFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecLoggingAccessLogFile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualGatewaySpecLoggingAccessLog.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLoggingAccessLog(
      files: (pulumi.Input.decodeList<GetVirtualGatewaySpecLoggingAccessLogFile>(map['files'], (value) => GetVirtualGatewaySpecLoggingAccessLogFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

