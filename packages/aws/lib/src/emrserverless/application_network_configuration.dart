// ignore_for_file: unused_element, unnecessary_cast

class ApplicationNetworkConfiguration {
  /// The array of security group Ids for customer VPC connectivity.
  final List<String>? securityGroupIds;

  /// The array of subnet Ids for customer VPC connectivity.
  final List<String>? subnetIds;

  /// Creates a new [ApplicationNetworkConfiguration].
  /// [securityGroupIds] The array of security group Ids for customer VPC connectivity.
  /// [subnetIds] The array of subnet Ids for customer VPC connectivity.
  ApplicationNetworkConfiguration({
    this.securityGroupIds,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    return map;
  }

  factory ApplicationNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationNetworkConfiguration(
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
    );
  }
}
