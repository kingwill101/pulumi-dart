// ignore_for_file: unused_element, unnecessary_cast

import 'gce_instance_response2.dart';

/// Runtime host for a workstation.
class HostResponse2 {
  /// Specifies a Compute Engine instance as the host.
  final GceInstanceResponse2 gceInstance;

  HostResponse2({
    required this.gceInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gceInstance'] = gceInstance.toMap();
    return map;
  }

  factory HostResponse2.fromMap(Map<String, dynamic> map) {
    return HostResponse2(
      gceInstance: GceInstanceResponse2.fromMap(
          (map['gceInstance'] as Map).cast<String, dynamic>()),
    );
  }
}
