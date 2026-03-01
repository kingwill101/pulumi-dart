// ignore_for_file: unused_element, unnecessary_cast


class GetRamDirectoriesDirectoryAdConnector {
  /// The address of AD connector.
  final String adConnectorAddress;
  /// The status of connector.
  final String connectorStatus;
  /// The ID of the network interface.
  final String networkInterfaceId;
  /// The ID of vSwitch.
  final String vswitchId;

  /// Creates a new [GetRamDirectoriesDirectoryAdConnector].
  /// [adConnectorAddress] The address of AD connector.
  /// [connectorStatus] The status of connector.
  /// [networkInterfaceId] The ID of the network interface.
  /// [vswitchId] The ID of vSwitch.
  GetRamDirectoriesDirectoryAdConnector({
    required this.adConnectorAddress,
    required this.connectorStatus,
    required this.networkInterfaceId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adConnectorAddress': adConnectorAddress,
      'connectorStatus': connectorStatus,
      'networkInterfaceId': networkInterfaceId,
      'vswitchId': vswitchId,
    };
  }

  factory GetRamDirectoriesDirectoryAdConnector.fromMap(Map<String, dynamic> map) {
    return GetRamDirectoriesDirectoryAdConnector(
      adConnectorAddress: map['adConnectorAddress'] as String,
      connectorStatus: map['connectorStatus'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

