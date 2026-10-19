// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterKubeControllerManagerConfigPodGcControllerConfig {
  /// The number of terminated pods that can exist before the pod garbage collector starts deleting them. Valid range: `0` to `12500`. Refer to the `aws.eks.getClusterVersions` data source for any version-specific constraints.
  final pulumi.Input<int?>? terminatedPodGcThreshold;

  /// Creates a new [ClusterKubeControllerManagerConfigPodGcControllerConfig].
  /// [terminatedPodGcThreshold] The number of terminated pods that can exist before the pod garbage collector starts deleting them. Valid range: `0` to `12500`. Refer to the `aws.eks.getClusterVersions` data source for any version-specific constraints.
  const ClusterKubeControllerManagerConfigPodGcControllerConfig({
    this.terminatedPodGcThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'terminatedPodGcThreshold': ?terminatedPodGcThreshold,
    };
  }

  factory ClusterKubeControllerManagerConfigPodGcControllerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterKubeControllerManagerConfigPodGcControllerConfig(
      terminatedPodGcThreshold: (() { final guardedValue = map['terminatedPodGcThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
