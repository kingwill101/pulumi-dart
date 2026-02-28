// ignore_for_file: unused_element, unnecessary_cast

import 'gce_instance.dart';

/// Runtime host for a workstation.
class Host {
  /// Specifies a Compute Engine instance as the host.
  final GceInstance? gceInstance;

  /// Creates a new [Host].
  /// [gceInstance] Specifies a Compute Engine instance as the host.
  Host({
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

  factory Host.fromMap(Map<String, dynamic> map) {
    return Host(
      gceInstance: map['gceInstance'] == null
          ? null
          : GceInstance.fromMap(
              (map['gceInstance'] as Map).cast<String, dynamic>()),
    );
  }
}
