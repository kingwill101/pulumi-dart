// ignore_for_file: unused_element, unnecessary_cast


class GetGatewaysGateway {
  /// Whether to automatically propagate BGP routes to the VPC. Valid values: `true`, `false`.
  final String autoPropagate;
  /// Limit search to specific business status - valid value is "Normal", "FinancialLocked".
  final String businessStatus;
  /// The creation time of the VPN gateway.
  final String createTime;
  /// The description of the VPN
  final String description;
  /// The backup public IP address of the VPN gateway. The second IP address assigned by the system to create an IPsec-VPN connection. This parameter is returned only when the VPN gateway supports the dual-tunnel mode.
  final String disasterRecoveryInternetIp;
  /// - The ID of the backup vSwitch to which the VPN gateway is attached.
  final String disasterRecoveryVswitchId;
  /// Indicates whether the IPsec-VPN feature is enabled.
  final String enableIpsec;
  /// Whether the ssl function is enabled. It has been deprecated from provider version 1.243.0, and using `ssl_vpn` instead.
  final String enableSsl;
  /// The expiration time of the VPN gateway.
  final String endTime;
  /// ID of the VPN.
  final String id;
  /// The charge type of the VPN gateway.
  final String instanceChargeType;
  /// The internet ip of the VPN.
  final String internetIp;
  /// The name of the VPN.
  final String name;
  /// The network type of the VPN gateway.
  final String networkType;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The Specification of the VPN
  final String specification;
  /// Total count of ssl vpn connections.
  final int sslConnections;
  /// Indicates whether the SSL-VPN feature is enabled. Valid value is `enable`, `disable`.
  final String sslVpn;
  /// The IP address of the SSL-VPN connection. This parameter is returned only when the VPN gateway is a public VPN gateway and supports only the single-tunnel mode. In addition, the VPN gateway must have the SSL-VPN feature enabled.
  final String sslVpnInternetIp;
  /// Limit search to specific status - valid value is "Init", "Provisioning", "Active", "Updating", "Deleting".
  final String status;
  /// The Tag of.
  final Map<String, String> tags;
  /// Use the VPC ID as the search key.
  final String vpcId;
  /// - The VPN gateway type. Value:  Normal (default): Normal type. NationalStandard: National Secret type.
  final String vpnType;
  /// - The ID of the vSwitch to which the VPN gateway is attached.
  final String vswitchId;

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
      autoPropagate: map['autoPropagate'] as String,
      businessStatus: map['businessStatus'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      disasterRecoveryInternetIp: map['disasterRecoveryInternetIp'] as String,
      disasterRecoveryVswitchId: map['disasterRecoveryVswitchId'] as String,
      enableIpsec: map['enableIpsec'] as String,
      enableSsl: map['enableSsl'] as String,
      endTime: map['endTime'] as String,
      id: map['id'] as String,
      instanceChargeType: map['instanceChargeType'] as String,
      internetIp: map['internetIp'] as String,
      name: map['name'] as String,
      networkType: map['networkType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      specification: map['specification'] as String,
      sslConnections: map['sslConnections'] as int,
      sslVpn: map['sslVpn'] as String,
      sslVpnInternetIp: map['sslVpnInternetIp'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vpnType: map['vpnType'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

