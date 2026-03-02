// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_logging_access_log.dart';

class GetVirtualNodeSpecLogging {
  final pulumi.Input<List<GetVirtualNodeSpecLoggingAccessLog>> accessLogs;

  /// Creates a new [GetVirtualNodeSpecLogging].
  /// [accessLogs] Required.
  GetVirtualNodeSpecLogging({
    required this.accessLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecLoggingAccessLog>, List<Map<String, dynamic>>>(accessLogs, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecLoggingAccessLog, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecLogging.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecLogging(
      accessLogs: (pulumi.Input.decodeList<GetVirtualNodeSpecLoggingAccessLog>(map['accessLogs'], (value) => GetVirtualNodeSpecLoggingAccessLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

