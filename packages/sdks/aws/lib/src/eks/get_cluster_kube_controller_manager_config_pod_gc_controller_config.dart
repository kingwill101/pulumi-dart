// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterKubeControllerManagerConfigPodGcControllerConfig {
  /// The number of terminated pods that can exist before the pod garbage collector starts deleting them.
  final pulumi.Input<int> terminatedPodGcThreshold;

  /// Creates a new [GetClusterKubeControllerManagerConfigPodGcControllerConfig].
  /// [terminatedPodGcThreshold] The number of terminated pods that can exist before the pod garbage collector starts deleting them.
  const GetClusterKubeControllerManagerConfigPodGcControllerConfig({
    required this.terminatedPodGcThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'terminatedPodGcThreshold': terminatedPodGcThreshold,
    };
  }

  factory GetClusterKubeControllerManagerConfigPodGcControllerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeControllerManagerConfigPodGcControllerConfig(
      terminatedPodGcThreshold: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['terminatedPodGcThreshold'])),
    );
  }
}
