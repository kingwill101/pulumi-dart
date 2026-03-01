// ignore_for_file: unused_element, unnecessary_cast


class GetAdConnectorDirectoriesDirectoryAdConnector {
  /// The address of AD connector.
  final String adConnectorAddress;
  /// The status of connector.
  final String connectorStatus;
  /// The ID of the network interface.
  final String networkInterfaceId;
  /// The AD Connector specifications.
  final String specification;
  /// The AD Connector control trust password.
  final String trustKey;
  /// The ID of vSwitch.
  final String vswitchId;

  /// Creates a new [GetAdConnectorDirectoriesDirectoryAdConnector].
  /// [adConnectorAddress] The address of AD connector.
  /// [connectorStatus] The status of connector.
  /// [networkInterfaceId] The ID of the network interface.
  /// [specification] The AD Connector specifications.
  /// [trustKey] The AD Connector control trust password.
  /// [vswitchId] The ID of vSwitch.
  GetAdConnectorDirectoriesDirectoryAdConnector({
    required this.adConnectorAddress,
    required this.connectorStatus,
    required this.networkInterfaceId,
    required this.specification,
    required this.trustKey,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adConnectorAddress': adConnectorAddress,
      'connectorStatus': connectorStatus,
      'networkInterfaceId': networkInterfaceId,
      'specification': specification,
      'trustKey': trustKey,
      'vswitchId': vswitchId,
    };
  }

  factory GetAdConnectorDirectoriesDirectoryAdConnector.fromMap(Map<String, dynamic> map) {
    return GetAdConnectorDirectoriesDirectoryAdConnector(
      adConnectorAddress: map['adConnectorAddress'] as String,
      connectorStatus: map['connectorStatus'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      specification: map['specification'] as String,
      trustKey: map['trustKey'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

