// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterKubeApiServerConfigServiceNodePortRange {
  /// The maximum port number in the range. Valid range: `10260` to `32767`. Default is `32767`. Must be greater than or equal to `minPort`.
  final pulumi.Input<int?>? maxPort;
  /// The minimum port number in the range. Valid range: `10260` to `32767`. Default is `30000`.
  final pulumi.Input<int?>? minPort;

  /// Creates a new [ClusterKubeApiServerConfigServiceNodePortRange].
  /// [maxPort] The maximum port number in the range. Valid range: `10260` to `32767`. Default is `32767`. Must be greater than or equal to `minPort`.
  /// [minPort] The minimum port number in the range. Valid range: `10260` to `32767`. Default is `30000`.
  const ClusterKubeApiServerConfigServiceNodePortRange({
    this.maxPort,
    this.minPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPort': ?maxPort,
      'minPort': ?minPort,
    };
  }

  factory ClusterKubeApiServerConfigServiceNodePortRange.fromMap(Map<String, dynamic> map) {
    return ClusterKubeApiServerConfigServiceNodePortRange(
      maxPort: (() { final guardedValue = map['maxPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minPort: (() { final guardedValue = map['minPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
