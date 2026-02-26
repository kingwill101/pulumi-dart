// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection {
  /// "The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. For example, `projects/project1/global/networks/network1`. The consumer host project of this network might be different from the consumer service project."
  final String consumerNetwork;

  /// (Output) The connection policy status of the consumer network.
  final String? consumerNetworkStatus;

  /// The project ID of consumer service project of this consumer endpoint.
  final String? consumerServiceProjectId;

  /// (Output) The IP address of the consumer endpoint.
  final String? ipAddress;

  /// (Output) The connection status of the consumer endpoint.
  final String? status;

  DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection({
    required this.consumerNetwork,
    this.consumerNetworkStatus,
    this.consumerServiceProjectId,
    this.ipAddress,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerNetwork'] = consumerNetwork;
    final consumerNetworkStatusValue = consumerNetworkStatus;
    if (consumerNetworkStatusValue != null) {
      map['consumerNetworkStatus'] = consumerNetworkStatusValue;
    }
    final consumerServiceProjectIdValue = consumerServiceProjectId;
    if (consumerServiceProjectIdValue != null) {
      map['consumerServiceProjectId'] = consumerServiceProjectIdValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection(
      consumerNetwork: map['consumerNetwork'] as String,
      consumerNetworkStatus: map['consumerNetworkStatus'] == null
          ? null
          : map['consumerNetworkStatus'] as String,
      consumerServiceProjectId: map['consumerServiceProjectId'] == null
          ? null
          : map['consumerServiceProjectId'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
