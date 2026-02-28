// ignore_for_file: unused_element, unnecessary_cast

import 'workstation_config_host_gce_instance.dart';

class WorkstationConfigHost {
  /// A runtime using a Compute Engine instance.
  /// Structure is documented below.
  final WorkstationConfigHostGceInstance? gceInstance;

  /// Creates a new [WorkstationConfigHost].
  /// [gceInstance] A runtime using a Compute Engine instance.
  WorkstationConfigHost({
    this.gceInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gceInstanceValue = gceInstance;
    if (gceInstanceValue != null) {
      map['gceInstance'] = gceInstanceValue.toMap();
    }
    return map;
  }

  factory WorkstationConfigHost.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHost(
      gceInstance: map['gceInstance'] == null
          ? null
          : WorkstationConfigHostGceInstance.fromMap(
              (map['gceInstance'] as Map).cast<String, dynamic>()),
    );
  }
}
