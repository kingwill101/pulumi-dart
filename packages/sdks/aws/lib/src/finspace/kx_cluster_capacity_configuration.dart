// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterCapacityConfiguration {
  /// Number of instances running in a cluster. Must be at least 1 and at most 5.
  final pulumi.Input<int> nodeCount;
  /// Hardware of the host computer used for your cluster instance. Valid values are `kx.s.large`, `kx.s.xlarge`, `kx.s.2xlarge`, `kx.s.4xlarge`, `kx.s.8xlarge`, `kx.s.16xlarge`, and `kx.s.32xlarge`.
  final pulumi.Input<String> nodeType;

  /// Creates a new [KxClusterCapacityConfiguration].
  /// [nodeCount] Number of instances running in a cluster. Must be at least 1 and at most 5.
  /// [nodeType] Hardware of the host computer used for your cluster instance. Valid values are `kx.s.large`, `kx.s.xlarge`, `kx.s.2xlarge`, `kx.s.4xlarge`, `kx.s.8xlarge`, `kx.s.16xlarge`, and `kx.s.32xlarge`.
  const KxClusterCapacityConfiguration({
    required this.nodeCount,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCount': nodeCount,
      'nodeType': nodeType,
    };
  }

  factory KxClusterCapacityConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterCapacityConfiguration(
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
    );
  }
}
