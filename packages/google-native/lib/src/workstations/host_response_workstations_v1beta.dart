// ignore_for_file: unused_element, unnecessary_cast

import 'gce_instance_response_workstations_v1beta.dart';

/// Runtime host for a workstation.
class HostResponseWorkstationsV1beta {
  /// Specifies a Compute Engine instance as the host.
  final GceInstanceResponseWorkstationsV1beta gceInstance;

  /// Creates a new [HostResponseWorkstationsV1beta].
  /// [gceInstance] Specifies a Compute Engine instance as the host.
  HostResponseWorkstationsV1beta({
    required this.gceInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gceInstance'] = gceInstance.toMap();
    return map;
  }

  factory HostResponseWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return HostResponseWorkstationsV1beta(
      gceInstance: GceInstanceResponseWorkstationsV1beta.fromMap(
          (map['gceInstance'] as Map).cast<String, dynamic>()),
    );
  }
}
