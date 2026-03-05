// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAdConnectorOfficeSitesSiteAdConnector {
  /// AD Connector across Zones, Its Connection Addresses.
  final pulumi.Input<String> adConnectorAddress;
  /// AD Connector of the State. Possible Values: Creating: in the Creation of. Connecting: Connection. Requires the User to Your Own Ad Configured on the Domain to Which. Running: Run. Expired: If You Are out-of-Date. CONNECT_ERROR: Connection Error.
  final pulumi.Input<String> connectorStatus;
  /// AD Connector Mount of the Card ID.
  final pulumi.Input<String> networkInterfaceId;
  /// AD Connector in the Network Corresponding to the ID of the vSwitch in.
  final pulumi.Input<String> vswitchId;

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
      adConnectorAddress: pulumi.Input.fromValue(map['adConnectorAddress'] as String),
      connectorStatus: pulumi.Input.fromValue(map['connectorStatus'] as String),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

