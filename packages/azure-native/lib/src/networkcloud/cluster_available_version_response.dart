// ignore_for_file: unused_element, unnecessary_cast


class ClusterAvailableVersionResponse {
  /// The last date the version of the platform is supported.
  final String supportExpiryDate;
  /// The version of the cluster to be deployed.
  final String targetClusterVersion;

  /// Creates a new [ClusterAvailableVersionResponse].
  /// [supportExpiryDate] The last date the version of the platform is supported.
  /// [targetClusterVersion] The version of the cluster to be deployed.
  ClusterAvailableVersionResponse({
    required this.supportExpiryDate,
    required this.targetClusterVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportExpiryDate': supportExpiryDate,
      'targetClusterVersion': targetClusterVersion,
    };
  }

  factory ClusterAvailableVersionResponse.fromMap(Map<String, dynamic> map) {
    return ClusterAvailableVersionResponse(
      supportExpiryDate: map['supportExpiryDate'] as String,
      targetClusterVersion: map['targetClusterVersion'] as String,
    );
  }
}

