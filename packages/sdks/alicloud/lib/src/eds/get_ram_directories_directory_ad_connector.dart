// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRamDirectoriesDirectoryAdConnector {
  /// The address of AD connector.
  final pulumi.Input<String> adConnectorAddress;
  /// The status of connector.
  final pulumi.Input<String> connectorStatus;
  /// The ID of the network interface.
  final pulumi.Input<String> networkInterfaceId;
  /// The ID of vSwitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetRamDirectoriesDirectoryAdConnector].
  /// [adConnectorAddress] The address of AD connector.
  /// [connectorStatus] The status of connector.
  /// [networkInterfaceId] The ID of the network interface.
  /// [vswitchId] The ID of vSwitch.
  const GetRamDirectoriesDirectoryAdConnector({
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
      adConnectorAddress: pulumi.Input.fromValue(map['adConnectorAddress'] as String),
      connectorStatus: pulumi.Input.fromValue(map['connectorStatus'] as String),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

