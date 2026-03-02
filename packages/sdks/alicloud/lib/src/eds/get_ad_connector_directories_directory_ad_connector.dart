// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAdConnectorDirectoriesDirectoryAdConnector {
  /// The address of AD connector.
  final pulumi.Input<String> adConnectorAddress;
  /// The status of connector.
  final pulumi.Input<String> connectorStatus;
  /// The ID of the network interface.
  final pulumi.Input<String> networkInterfaceId;
  /// The AD Connector specifications.
  final pulumi.Input<String> specification;
  /// The AD Connector control trust password.
  final pulumi.Input<String> trustKey;
  /// The ID of vSwitch.
  final pulumi.Input<String> vswitchId;

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
      adConnectorAddress: (map['adConnectorAddress'] as String).input(),
      connectorStatus: (map['connectorStatus'] as String).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      specification: (map['specification'] as String).input(),
      trustKey: (map['trustKey'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

