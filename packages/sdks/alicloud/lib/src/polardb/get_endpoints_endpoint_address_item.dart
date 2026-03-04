// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointsEndpointAddressItem {
  /// Connection instance string.
  final pulumi.Input<String> connectionString;

  /// The ip address of connection string.
  final pulumi.Input<String> ipAddress;

  /// IP network type:`Public` or `Private`.
  final pulumi.Input<String> netType;

  /// Intranet connection port.
  final pulumi.Input<String> port;

  /// ID of the VPC the instance belongs to.
  final pulumi.Input<String> vpcId;

  /// ID of the vSwitch the cluster belongs to.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetEndpointsEndpointAddressItem].
  /// [connectionString] Connection instance string.
  /// [ipAddress] The ip address of connection string.
  /// [netType] IP network type:`Public` or `Private`.
  /// [port] Intranet connection port.
  /// [vpcId] ID of the VPC the instance belongs to.
  /// [vswitchId] ID of the vSwitch the cluster belongs to.
  GetEndpointsEndpointAddressItem({
    required this.connectionString,
    required this.ipAddress,
    required this.netType,
    required this.port,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'ipAddress': ipAddress,
      'netType': netType,
      'port': port,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetEndpointsEndpointAddressItem.fromMap(Map<String, dynamic> map) {
    return GetEndpointsEndpointAddressItem(
      connectionString: pulumi.Input.fromValue(
        map['connectionString'] as String,
      ),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      netType: pulumi.Input.fromValue(map['netType'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}
