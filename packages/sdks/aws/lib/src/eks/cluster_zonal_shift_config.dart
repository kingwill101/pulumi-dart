// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterZonalShiftConfig {
  /// Whether zonal shift is enabled for the cluster.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ClusterZonalShiftConfig].
  /// [enabled] Whether zonal shift is enabled for the cluster.
  const ClusterZonalShiftConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClusterZonalShiftConfig.fromMap(Map<String, dynamic> map) {
    return ClusterZonalShiftConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
