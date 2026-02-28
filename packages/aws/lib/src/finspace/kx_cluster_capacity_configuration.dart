// ignore_for_file: unused_element, unnecessary_cast

class KxClusterCapacityConfiguration {
  /// Number of instances running in a cluster. Must be at least 1 and at most 5.
  final int nodeCount;

  /// Determines the hardware of the host computer used for your cluster instance. Each node type offers different memory and storage capabilities. Choose a node type based on the requirements of the application or software that you plan to run on your instance.
  ///
  /// You can only specify one of the following values:
  /// * kx.s.large - The node type with a configuration of 12 GiB memory and 2 vCPUs.
  /// * kx.s.xlarge - The node type with a configuration of 27 GiB memory and 4 vCPUs.
  /// * kx.s.2xlarge - The node type with a configuration of 54 GiB memory and 8 vCPUs.
  /// * kx.s.4xlarge - The node type with a configuration of 108 GiB memory and 16 vCPUs.
  /// * kx.s.8xlarge - The node type with a configuration of 216 GiB memory and 32 vCPUs.
  /// * kx.s.16xlarge - The node type with a configuration of 432 GiB memory and 64 vCPUs.
  /// * kx.s.32xlarge - The node type with a configuration of 864 GiB memory and 128 vCPUs.
  final String nodeType;

  /// Creates a new [KxClusterCapacityConfiguration].
  /// [nodeCount] Number of instances running in a cluster. Must be at least 1 and at most 5.
  /// [nodeType] Determines the hardware of the host computer used for your cluster instance. Each node type offers different memory and storage capabilities. Choose a node type based on the requirements of the application or software that you plan to run on your instance.
  KxClusterCapacityConfiguration({
    required this.nodeCount,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeCount'] = nodeCount;
    map['nodeType'] = nodeType;
    return map;
  }

  factory KxClusterCapacityConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterCapacityConfiguration(
      nodeCount: map['nodeCount'] as int,
      nodeType: map['nodeType'] as String,
    );
  }
}
