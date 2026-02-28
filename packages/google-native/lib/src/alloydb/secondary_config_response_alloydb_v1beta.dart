// ignore_for_file: unused_element, unnecessary_cast


/// Configuration information for the secondary cluster. This should be set if and only if the cluster is of type SECONDARY.
class SecondaryConfigResponseAlloydbV1beta {
  /// The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final String primaryClusterName;

  /// Creates a new [SecondaryConfigResponseAlloydbV1beta].
  /// [primaryClusterName] The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  SecondaryConfigResponseAlloydbV1beta({
    required this.primaryClusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryClusterName': primaryClusterName,
    };
  }

  factory SecondaryConfigResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return SecondaryConfigResponseAlloydbV1beta(
      primaryClusterName: map['primaryClusterName'] as String,
    );
  }
}

