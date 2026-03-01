// ignore_for_file: unused_element, unnecessary_cast


class GetAdConnectorOfficeSitesSiteAdConnector {
  /// AD Connector across Zones, Its Connection Addresses.
  final String adConnectorAddress;
  /// AD Connector of the State. Possible Values: Creating: in the Creation of. Connecting: Connection. Requires the User to Your Own Ad Configured on the Domain to Which. Running: Run. Expired: If You Are out-of-Date. CONNECT_ERROR: Connection Error.
  final String connectorStatus;
  /// AD Connector Mount of the Card ID.
  final String networkInterfaceId;
  /// AD Connector in the Network Corresponding to the ID of the vSwitch in.
  final String vswitchId;

  /// Creates a new [GetAdConnectorOfficeSitesSiteAdConnector].
  /// [adConnectorAddress] AD Connector across Zones, Its Connection Addresses.
  /// [connectorStatus] AD Connector of the State. Possible Values: Creating: in the Creation of. Connecting: Connection. Requires the User to Your Own Ad Configured on the Domain to Which. Running: Run. Expired: If You Are out-of-Date. CONNECT_ERROR: Connection Error.
  /// [networkInterfaceId] AD Connector Mount of the Card ID.
  /// [vswitchId] AD Connector in the Network Corresponding to the ID of the vSwitch in.
  GetAdConnectorOfficeSitesSiteAdConnector({
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

  factory GetAdConnectorOfficeSitesSiteAdConnector.fromMap(Map<String, dynamic> map) {
    return GetAdConnectorOfficeSitesSiteAdConnector(
      adConnectorAddress: map['adConnectorAddress'] as String,
      connectorStatus: map['connectorStatus'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

