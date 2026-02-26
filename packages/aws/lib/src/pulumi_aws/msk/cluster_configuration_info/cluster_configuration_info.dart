// ignore_for_file: unused_element, unnecessary_cast

class ClusterConfigurationInfo {
  /// Amazon Resource Name (ARN) of the MSK Configuration to use in the cluster.
  final String arn;

  /// Revision of the MSK Configuration to use in the cluster.
  final int revision;

  ClusterConfigurationInfo({
    required this.arn,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['revision'] = revision;
    return map;
  }

  factory ClusterConfigurationInfo.fromMap(Map<String, dynamic> map) {
    return ClusterConfigurationInfo(
      arn: map['arn'] as String,
      revision: map['revision'] as int,
    );
  }
}
