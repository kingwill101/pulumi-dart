// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_logging_access_log.dart';

class VirtualNodeSpecLogging {
  /// Access log configuration for a virtual node.
  final VirtualNodeSpecLoggingAccessLog? accessLog;

  /// Creates a new [VirtualNodeSpecLogging].
  /// [accessLog] Access log configuration for a virtual node.
  VirtualNodeSpecLogging({
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

  factory VirtualNodeSpecLogging.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecLogging(
      accessLog: map['accessLog'] == null
          ? null
          : VirtualNodeSpecLoggingAccessLog.fromMap(
              (map['accessLog'] as Map).cast<String, dynamic>()),
    );
  }
}
