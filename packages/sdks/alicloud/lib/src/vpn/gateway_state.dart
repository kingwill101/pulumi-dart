// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Gateway resources.
class GatewayState {
  /// Whether to pay automatically. Default value: `true`. Valid values:
  final pulumi.Input<bool>? autoPay;
  /// Whether to automatically propagate the BGP route to the VPC. Value:  true: Propagate automatically.  false: does not propagate automatically.
  final pulumi.Input<bool>? autoPropagate;
  /// The Bandwidth specification of the VPN gateway. Unit: Mbps.  If you want to create a public VPN gateway, the value is 5, 10, 20, 50, 100, 200, 500, or 1000. If you want to create a private VPN gateway, the value is 200 or 1000.
  final pulumi.Input<int>? bandwidth;
  /// The business status of the VPN gateway.
  final pulumi.Input<String>? businessStatus;
  /// The time when the VPN gateway was created.
  final pulumi.Input<int>? createTime;
  /// The description of the VPN gateway.
  final pulumi.Input<String>? description;
  /// The backup public IP address of the VPN gateway. The second IP address assigned by the system to create an IPsec-VPN connection. This parameter is returned only when the VPN gateway supports the dual-tunnel mode.
  final pulumi.Input<String>? disasterRecoveryInternetIp;
  /// The ID of the backup VSwitch to which the VPN gateway is attached.
  final pulumi.Input<String>? disasterRecoveryVswitchId;
  /// Enable or Disable IPSec VPN. At least one type of VPN should be enabled.
  final pulumi.Input<bool>? enableIpsec;
  /// Enable or Disable SSL VPN.  At least one type of VPN should be enabled.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<bool>? enableSsl;
  /// . Field 'instance_charge_type' has been deprecated from provider version 1.216.0. New field 'payment_type' instead.
  final pulumi.Input<String>? instanceChargeType;
  /// The internet ip of the VPN.
  final pulumi.Input<String>? internetIp;
  /// . Field 'name' has been deprecated from provider version 1.216.0. New field 'vpn_gateway_name' instead.
  final pulumi.Input<String>? name;
  /// The network type of the VPN gateway. Value:  public (default): public VPN gateway. private: private network VPN gateway.
  final pulumi.Input<String>? networkType;
  /// Type of payment. Value: Subscription: prepaid PayAsYouGo: Post-paid.
  final pulumi.Input<String>? paymentType;
  /// The filed is only required while the InstanceChargeType is PrePaid. Valid values: [1-9, 12, 24, 36]. Default to 1.
  final pulumi.Input<int>? period;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Maximum number of clients.
  final pulumi.Input<int>? sslConnections;
  /// The IP address of the SSL-VPN connection. This parameter is returned only when the VPN gateway is a public VPN gateway and supports only the single-tunnel mode. In addition, the VPN gateway must have the SSL-VPN feature enabled.
  final pulumi.Input<String>? sslVpnInternetIp;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The Tag of.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC to which the VPN gateway belongs.
  final pulumi.Input<String>? vpcId;
  /// The name of the VPN gateway.
  final pulumi.Input<String>? vpnGatewayName;
  /// The VPN gateway type. Value:  Normal (default): Normal type. NationalStandard: National Secret type.
  final pulumi.Input<String>? vpnType;
  /// The ID of the VSwitch to which the VPN gateway is attached.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GatewayState].
  /// [autoPay] Whether to pay automatically. Default value: `true`. Valid values:
  /// [autoPropagate] Whether to automatically propagate the BGP route to the VPC. Value:  true: Propagate automatically.  false: does not propagate automatically.
  /// [bandwidth] The Bandwidth specification of the VPN gateway. Unit: Mbps.  If you want to create a public VPN gateway, the value is 5, 10, 20, 50, 100, 200, 500, or 1000. If you want to create a private VPN gateway, the value is 200 or 1000.
  /// [businessStatus] The business status of the VPN gateway.
  /// [createTime] The time when the VPN gateway was created.
  /// [description] The description of the VPN gateway.
  /// [disasterRecoveryInternetIp] The backup public IP address of the VPN gateway. The second IP address assigned by the system to create an IPsec-VPN connection. This parameter is returned only when the VPN gateway supports the dual-tunnel mode.
  /// [disasterRecoveryVswitchId] The ID of the backup VSwitch to which the VPN gateway is attached.
  /// [enableIpsec] Enable or Disable IPSec VPN. At least one type of VPN should be enabled.
  /// [enableSsl] Enable or Disable SSL VPN.  At least one type of VPN should be enabled.
  /// [instanceChargeType] . Field 'instance_charge_type' has been deprecated from provider version 1.216.0. New field 'payment_type' instead.
  /// [internetIp] The internet ip of the VPN.
  /// [name] . Field 'name' has been deprecated from provider version 1.216.0. New field 'vpn_gateway_name' instead.
  /// [networkType] The network type of the VPN gateway. Value:  public (default): public VPN gateway. private: private network VPN gateway.
  /// [paymentType] Type of payment. Value: Subscription: prepaid PayAsYouGo: Post-paid.
  /// [period] The filed is only required while the InstanceChargeType is PrePaid. Valid values: [1-9, 12, 24, 36]. Default to 1.
  /// [resourceGroupId] The ID of the resource group.
  /// [sslConnections] Maximum number of clients.
  /// [sslVpnInternetIp] The IP address of the SSL-VPN connection. This parameter is returned only when the VPN gateway is a public VPN gateway and supports only the single-tunnel mode. In addition, the VPN gateway must have the SSL-VPN feature enabled.
  /// [status] The status of the resource.
  /// [tags] The Tag of.
  /// [vpcId] The ID of the VPC to which the VPN gateway belongs.
  /// [vpnGatewayName] The name of the VPN gateway.
  /// [vpnType] The VPN gateway type. Value:  Normal (default): Normal type. NationalStandard: National Secret type.
  /// [vswitchId] The ID of the VSwitch to which the VPN gateway is attached.
  GatewayState({
    this.autoPay,
    this.autoPropagate,
    this.bandwidth,
    this.businessStatus,
    this.createTime,
    this.description,
    this.disasterRecoveryInternetIp,
    this.disasterRecoveryVswitchId,
    this.enableIpsec,
    this.enableSsl,
    this.instanceChargeType,
    this.internetIp,
    this.name,
    this.networkType,
    this.paymentType,
    this.period,
    this.resourceGroupId,
    this.sslConnections,
    this.sslVpnInternetIp,
    this.status,
    this.tags,
    this.vpcId,
    this.vpnGatewayName,
    this.vpnType,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoPropagate': ?autoPropagate,
      'bandwidth': ?bandwidth,
      'businessStatus': ?businessStatus,
      'createTime': ?createTime,
      'description': ?description,
      'disasterRecoveryInternetIp': ?disasterRecoveryInternetIp,
      'disasterRecoveryVswitchId': ?disasterRecoveryVswitchId,
      'enableIpsec': ?enableIpsec,
      'enableSsl': ?enableSsl,
      'instanceChargeType': ?instanceChargeType,
      'internetIp': ?internetIp,
      'name': ?name,
      'networkType': ?networkType,
      'paymentType': ?paymentType,
      'period': ?period,
      'resourceGroupId': ?resourceGroupId,
      'sslConnections': ?sslConnections,
      'sslVpnInternetIp': ?sslVpnInternetIp,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vpnGatewayName': ?vpnGatewayName,
      'vpnType': ?vpnType,
      'vswitchId': ?vswitchId,
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
      autoPay: map['autoPay'] == null ? null : (map['autoPay']! as bool).input(),
      autoPropagate: map['autoPropagate'] == null ? null : (map['autoPropagate']! as bool).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth']! as int).input(),
      businessStatus: map['businessStatus'] == null ? null : (map['businessStatus']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disasterRecoveryInternetIp: map['disasterRecoveryInternetIp'] == null ? null : (map['disasterRecoveryInternetIp']! as String).input(),
      disasterRecoveryVswitchId: map['disasterRecoveryVswitchId'] == null ? null : (map['disasterRecoveryVswitchId']! as String).input(),
      enableIpsec: map['enableIpsec'] == null ? null : (map['enableIpsec']! as bool).input(),
      enableSsl: map['enableSsl'] == null ? null : (map['enableSsl']! as bool).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      internetIp: map['internetIp'] == null ? null : (map['internetIp']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      sslConnections: map['sslConnections'] == null ? null : (map['sslConnections']! as int).input(),
      sslVpnInternetIp: map['sslVpnInternetIp'] == null ? null : (map['sslVpnInternetIp']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vpnGatewayName: map['vpnGatewayName'] == null ? null : (map['vpnGatewayName']! as String).input(),
      vpnType: map['vpnType'] == null ? null : (map['vpnType']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

