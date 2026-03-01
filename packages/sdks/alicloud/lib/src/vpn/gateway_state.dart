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
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoPropagate,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? businessStatus,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? disasterRecoveryInternetIp,
    pulumi.Output<String>? disasterRecoveryVswitchId,
    pulumi.Output<bool>? enableIpsec,
    pulumi.Output<bool>? enableSsl,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? internetIp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? sslConnections,
    pulumi.Output<String>? sslVpnInternetIp,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpnGatewayName,
    pulumi.Output<String>? vpnType,
    pulumi.Output<String>? vswitchId,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoPropagate = pulumi.Input.asOptionalInput<bool>(autoPropagate),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      businessStatus = pulumi.Input.asOptionalInput<String>(businessStatus),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      disasterRecoveryInternetIp = pulumi.Input.asOptionalInput<String>(disasterRecoveryInternetIp),
      disasterRecoveryVswitchId = pulumi.Input.asOptionalInput<String>(disasterRecoveryVswitchId),
      enableIpsec = pulumi.Input.asOptionalInput<bool>(enableIpsec),
      enableSsl = pulumi.Input.asOptionalInput<bool>(enableSsl),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      internetIp = pulumi.Input.asOptionalInput<String>(internetIp),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sslConnections = pulumi.Input.asOptionalInput<int>(sslConnections),
      sslVpnInternetIp = pulumi.Input.asOptionalInput<String>(sslVpnInternetIp),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpnGatewayName = pulumi.Input.asOptionalInput<String>(vpnGatewayName),
      vpnType = pulumi.Input.asOptionalInput<String>(vpnType),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoPropagate: map['autoPropagate'] == null ? null : pulumi.Output.create<bool>(map['autoPropagate'] as bool),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      businessStatus: map['businessStatus'] == null ? null : pulumi.Output.create<String>(map['businessStatus'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disasterRecoveryInternetIp: map['disasterRecoveryInternetIp'] == null ? null : pulumi.Output.create<String>(map['disasterRecoveryInternetIp'] as String),
      disasterRecoveryVswitchId: map['disasterRecoveryVswitchId'] == null ? null : pulumi.Output.create<String>(map['disasterRecoveryVswitchId'] as String),
      enableIpsec: map['enableIpsec'] == null ? null : pulumi.Output.create<bool>(map['enableIpsec'] as bool),
      enableSsl: map['enableSsl'] == null ? null : pulumi.Output.create<bool>(map['enableSsl'] as bool),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      internetIp: map['internetIp'] == null ? null : pulumi.Output.create<String>(map['internetIp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sslConnections: map['sslConnections'] == null ? null : pulumi.Output.create<int>(map['sslConnections'] as int),
      sslVpnInternetIp: map['sslVpnInternetIp'] == null ? null : pulumi.Output.create<String>(map['sslVpnInternetIp'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpnGatewayName: map['vpnGatewayName'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayName'] as String),
      vpnType: map['vpnType'] == null ? null : pulumi.Output.create<String>(map['vpnType'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

