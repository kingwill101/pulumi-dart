// ignore_for_file: unused_element, unnecessary_cast

import 'gce_instance2.dart';

/// Runtime host for a workstation.
class Host2 {
  /// Specifies a Compute Engine instance as the host.
  final GceInstance2? gceInstance;

  Host2({
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

  factory Host2.fromMap(Map<String, dynamic> map) {
    return Host2(
      gceInstance: map['gceInstance'] == null
          ? null
          : GceInstance2.fromMap(
              (map['gceInstance'] as Map).cast<String, dynamic>()),
    );
  }
}
