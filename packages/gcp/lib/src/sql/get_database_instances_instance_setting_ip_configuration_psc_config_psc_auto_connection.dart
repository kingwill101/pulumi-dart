// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection {
  /// The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. The consumer host project of this network might be different from the consumer service project.
  final String consumerNetwork;

  /// The connection policy status of the consumer network.
  final String consumerNetworkStatus;

  /// The project ID of consumer service project of this consumer endpoint.
  final String consumerServiceProjectId;

  /// The IP address of the consumer endpoint.
  final String ipAddress;

  /// The connection status of the consumer endpoint.
  final String status;

  /// Creates a new [GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection].
  /// [consumerNetwork] The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. The consumer host project of this network might be different from the consumer service project.
  /// [consumerNetworkStatus] The connection policy status of the consumer network.
  /// [consumerServiceProjectId] The project ID of consumer service project of this consumer endpoint.
  /// [ipAddress] The IP address of the consumer endpoint.
  /// [status] The connection status of the consumer endpoint.
  GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection({
    required this.consumerNetwork,
    required this.consumerNetworkStatus,
    required this.consumerServiceProjectId,
    required this.ipAddress,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerNetwork'] = consumerNetwork;
    map['consumerNetworkStatus'] = consumerNetworkStatus;
    map['consumerServiceProjectId'] = consumerServiceProjectId;
    map['ipAddress'] = ipAddress;
    map['status'] = status;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection(
      consumerNetwork: map['consumerNetwork'] as String,
      consumerNetworkStatus: map['consumerNetworkStatus'] as String,
      consumerServiceProjectId: map['consumerServiceProjectId'] as String,
      ipAddress: map['ipAddress'] as String,
      status: map['status'] as String,
    );
  }
}
