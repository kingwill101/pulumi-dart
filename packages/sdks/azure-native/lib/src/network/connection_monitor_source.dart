// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the source of connection monitor.
class ConnectionMonitorSource {
  /// The source port used by connection monitor.
  final pulumi.Input<int>? port;

  /// The ID of the resource used as the source by connection monitor.
  final pulumi.Input<String> resourceId;

  /// Creates a new [ConnectionMonitorSource].
  /// [port] The source port used by connection monitor.
  /// [resourceId] The ID of the resource used as the source by connection monitor.
  ConnectionMonitorSource({this.port, required this.resourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': ?port, 'resourceId': resourceId};
  }

  factory ConnectionMonitorSource.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorSource(
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
