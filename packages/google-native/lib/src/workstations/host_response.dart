// ignore_for_file: unused_element, unnecessary_cast

import 'gce_instance_response.dart';

/// Runtime host for a workstation.
class HostResponse {
  /// Specifies a Compute Engine instance as the host.
  final GceInstanceResponse gceInstance;

  /// Creates a new [HostResponse].
  /// [gceInstance] Specifies a Compute Engine instance as the host.
  HostResponse({
    required this.gceInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gceInstance'] = gceInstance.toMap();
    return map;
  }

  factory HostResponse.fromMap(Map<String, dynamic> map) {
    return HostResponse(
      gceInstance: GceInstanceResponse.fromMap(
          (map['gceInstance'] as Map).cast<String, dynamic>()),
    );
  }
}
