// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewaysGateway {
  /// Whether to automatically propagate BGP routes to the VPC. Valid values: `true`, `false`.
  final pulumi.Input<String> autoPropagate;
  /// Limit search to specific business status - valid value is "Normal", "FinancialLocked".
  final pulumi.Input<String> businessStatus;
  /// The creation time of the VPN gateway.
  final pulumi.Input<String> createTime;
  /// The description of the VPN
  final pulumi.Input<String> description;
  /// The backup public IP address of the VPN gateway. The second IP address assigned by the system to create an IPsec-VPN connection. This parameter is returned only when the VPN gateway supports the dual-tunnel mode.
  final pulumi.Input<String> disasterRecoveryInternetIp;
  /// - The ID of the backup vSwitch to which the VPN gateway is attached.
  final pulumi.Input<String> disasterRecoveryVswitchId;
  /// Indicates whether the IPsec-VPN feature is enabled.
  final pulumi.Input<String> enableIpsec;
  /// Whether the ssl function is enabled. It has been deprecated from provider version 1.243.0, and using `ssl_vpn` instead.
  final pulumi.Input<String> enableSsl;
  /// The expiration time of the VPN gateway.
  final pulumi.Input<String> endTime;
  /// ID of the VPN.
  final pulumi.Input<String> id;
  /// The charge type of the VPN gateway.
  final pulumi.Input<String> instanceChargeType;
  /// The internet ip of the VPN.
  final pulumi.Input<String> internetIp;
  /// The name of the VPN.
  final pulumi.Input<String> name;
  /// The network type of the VPN gateway.
  final pulumi.Input<String> networkType;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The Specification of the VPN
  final pulumi.Input<String> specification;
  /// Total count of ssl vpn connections.
  final pulumi.Input<int> sslConnections;
  /// Indicates whether the SSL-VPN feature is enabled. Valid value is `enable`, `disable`.
  final pulumi.Input<String> sslVpn;
  /// The IP address of the SSL-VPN connection. This parameter is returned only when the VPN gateway is a public VPN gateway and supports only the single-tunnel mode. In addition, the VPN gateway must have the SSL-VPN feature enabled.
  final pulumi.Input<String> sslVpnInternetIp;
  /// Limit search to specific status - valid value is "Init", "Provisioning", "Active", "Updating", "Deleting".
  final pulumi.Input<String> status;
  /// The Tag of.
  final pulumi.Input<Map<String, String>> tags;
  /// Use the VPC ID as the search key.
  final pulumi.Input<String> vpcId;
  /// - The VPN gateway type. Value:  Normal (default): Normal type. NationalStandard: National Secret type.
  final pulumi.Input<String> vpnType;
  /// - The ID of the vSwitch to which the VPN gateway is attached.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetGatewaysGateway].
  /// [autoPropagate] Whether to automatically propagate BGP routes to the VPC. Valid values: `true`, `false`.
  /// [businessStatus] Limit search to specific business status - valid value is "Normal", "FinancialLocked".
  /// [createTime] The creation time of the VPN gateway.
  /// [description] The description of the VPN
  /// [disasterRecoveryInternetIp] The backup public IP address of the VPN gateway. The second IP address assigned by the system to create an IPsec-VPN connection. This parameter is returned only when the VPN gateway supports the dual-tunnel mode.
  /// [disasterRecoveryVswitchId] - The ID of the backup vSwitch to which the VPN gateway is attached.
  /// [enableIpsec] Indicates whether the IPsec-VPN feature is enabled.
  /// [enableSsl] Whether the ssl function is enabled. It has been deprecated from provider version 1.243.0, and using `ssl_vpn` instead.
  /// [endTime] The expiration time of the VPN gateway.
  /// [id] ID of the VPN.
  /// [instanceChargeType] The charge type of the VPN gateway.
  /// [internetIp] The internet ip of the VPN.
  /// [name] The name of the VPN.
  /// [networkType] The network type of the VPN gateway.
  /// [resourceGroupId] The ID of the resource group.
  /// [specification] The Specification of the VPN
  /// [sslConnections] Total count of ssl vpn connections.
  /// [sslVpn] Indicates whether the SSL-VPN feature is enabled. Valid value is `enable`, `disable`.
  /// [sslVpnInternetIp] The IP address of the SSL-VPN connection. This parameter is returned only when the VPN gateway is a public VPN gateway and supports only the single-tunnel mode. In addition, the VPN gateway must have the SSL-VPN feature enabled.
  /// [status] Limit search to specific status - valid value is "Init", "Provisioning", "Active", "Updating", "Deleting".
  /// [tags] The Tag of.
  /// [vpcId] Use the VPC ID as the search key.
  /// [vpnType] - The VPN gateway type. Value:  Normal (default): Normal type. NationalStandard: National Secret type.
  /// [vswitchId] - The ID of the vSwitch to which the VPN gateway is attached.
  GetGatewaysGateway({
    required this.autoPropagate,
    required this.businessStatus,
    required this.createTime,
    required this.description,
    required this.disasterRecoveryInternetIp,
    required this.disasterRecoveryVswitchId,
    required this.enableIpsec,
    required this.enableSsl,
    required this.endTime,
    required this.id,
    required this.instanceChargeType,
    required this.internetIp,
    required this.name,
    required this.networkType,
    required this.resourceGroupId,
    required this.specification,
    required this.sslConnections,
    required this.sslVpn,
    required this.sslVpnInternetIp,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.vpnType,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPropagate': autoPropagate,
      'businessStatus': businessStatus,
      'createTime': createTime,
      'description': description,
      'disasterRecoveryInternetIp': disasterRecoveryInternetIp,
      'disasterRecoveryVswitchId': disasterRecoveryVswitchId,
      'enableIpsec': enableIpsec,
      'enableSsl': enableSsl,
      'endTime': endTime,
      'id': id,
      'instanceChargeType': instanceChargeType,
      'internetIp': internetIp,
      'name': name,
      'networkType': networkType,
      'resourceGroupId': resourceGroupId,
      'specification': specification,
      'sslConnections': sslConnections,
      'sslVpn': sslVpn,
      'sslVpnInternetIp': sslVpnInternetIp,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'vpnType': vpnType,
      'vswitchId': vswitchId,
    };
  }

  factory GetGatewaysGateway.fromMap(Map<String, dynamic> map) {
    return GetGatewaysGateway(
      autoPropagate: pulumi.Input.fromValue(map['autoPropagate'] as String),
      businessStatus: pulumi.Input.fromValue(map['businessStatus'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      disasterRecoveryInternetIp: pulumi.Input.fromValue(map['disasterRecoveryInternetIp'] as String),
      disasterRecoveryVswitchId: pulumi.Input.fromValue(map['disasterRecoveryVswitchId'] as String),
      enableIpsec: pulumi.Input.fromValue(map['enableIpsec'] as String),
      enableSsl: pulumi.Input.fromValue(map['enableSsl'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceChargeType: pulumi.Input.fromValue(map['instanceChargeType'] as String),
      internetIp: pulumi.Input.fromValue(map['internetIp'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      specification: pulumi.Input.fromValue(map['specification'] as String),
      sslConnections: pulumi.Input.fromValue(map['sslConnections'] as int),
      sslVpn: pulumi.Input.fromValue(map['sslVpn'] as String),
      sslVpnInternetIp: pulumi.Input.fromValue(map['sslVpnInternetIp'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpnType: pulumi.Input.fromValue(map['vpnType'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

