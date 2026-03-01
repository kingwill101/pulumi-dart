// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_vpn_gateway_gateway_args_doc}
class GatewayArgs {
  /// Whether to pay automatically. Default value: `true`. Valid values:
  final pulumi.Input<bool>? autoPay;
  /// Whether to automatically propagate the BGP route to the VPC. Value:  true: Propagate automatically.  false: does not propagate automatically.
  final pulumi.Input<bool>? autoPropagate;
  /// The Bandwidth specification of the VPN gateway. Unit: Mbps.  If you want to create a public VPN gateway, the value is 5, 10, 20, 50, 100, 200, 500, or 1000. If you want to create a private VPN gateway, the value is 200 or 1000.
  final pulumi.Input<int> bandwidth;
  /// The description of the VPN gateway.
  final pulumi.Input<String>? description;
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
  /// The Tag of.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC to which the VPN gateway belongs.
  final pulumi.Input<String> vpcId;
  /// The name of the VPN gateway.
  final pulumi.Input<String>? vpnGatewayName;
  /// The VPN gateway type. Value:  Normal (default): Normal type. NationalStandard: National Secret type.
  final pulumi.Input<String>? vpnType;
  /// The ID of the VSwitch to which the VPN gateway is attached.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GatewayArgs].
  /// [autoPay] Whether to pay automatically. Default value: `true`. Valid values:
  /// [autoPropagate] Whether to automatically propagate the BGP route to the VPC. Value:  true: Propagate automatically.  false: does not propagate automatically.
  /// [bandwidth] The Bandwidth specification of the VPN gateway. Unit: Mbps.  If you want to create a public VPN gateway, the value is 5, 10, 20, 50, 100, 200, 500, or 1000. If you want to create a private VPN gateway, the value is 200 or 1000.
  /// [description] The description of the VPN gateway.
  /// [disasterRecoveryVswitchId] The ID of the backup VSwitch to which the VPN gateway is attached.
  /// [enableIpsec] Enable or Disable IPSec VPN. At least one type of VPN should be enabled.
  /// [enableSsl] Enable or Disable SSL VPN.  At least one type of VPN should be enabled.
  /// [instanceChargeType] . Field 'instance_charge_type' has been deprecated from provider version 1.216.0. New field 'payment_type' instead.
  /// [name] . Field 'name' has been deprecated from provider version 1.216.0. New field 'vpn_gateway_name' instead.
  /// [networkType] The network type of the VPN gateway. Value:  public (default): public VPN gateway. private: private network VPN gateway.
  /// [paymentType] Type of payment. Value: Subscription: prepaid PayAsYouGo: Post-paid.
  /// [period] The filed is only required while the InstanceChargeType is PrePaid. Valid values: [1-9, 12, 24, 36]. Default to 1.
  /// [resourceGroupId] The ID of the resource group.
  /// [sslConnections] Maximum number of clients.
  /// [tags] The Tag of.
  /// [vpcId] The ID of the VPC to which the VPN gateway belongs.
  /// [vpnGatewayName] The name of the VPN gateway.
  /// [vpnType] The VPN gateway type. Value:  Normal (default): Normal type. NationalStandard: National Secret type.
  /// [vswitchId] The ID of the VSwitch to which the VPN gateway is attached.
  GatewayArgs({
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoPropagate,
    required pulumi.Output<int> bandwidth,
    pulumi.Output<String>? description,
    pulumi.Output<String>? disasterRecoveryVswitchId,
    pulumi.Output<bool>? enableIpsec,
    pulumi.Output<bool>? enableSsl,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? sslConnections,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
    pulumi.Output<String>? vpnGatewayName,
    pulumi.Output<String>? vpnType,
    pulumi.Output<String>? vswitchId,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoPropagate = pulumi.Input.asOptionalInput<bool>(autoPropagate),
      bandwidth = pulumi.Input.asInput<int>(bandwidth),
      description = pulumi.Input.asOptionalInput<String>(description),
      disasterRecoveryVswitchId = pulumi.Input.asOptionalInput<String>(disasterRecoveryVswitchId),
      enableIpsec = pulumi.Input.asOptionalInput<bool>(enableIpsec),
      enableSsl = pulumi.Input.asOptionalInput<bool>(enableSsl),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sslConnections = pulumi.Input.asOptionalInput<int>(sslConnections),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vpnGatewayName = pulumi.Input.asOptionalInput<String>(vpnGatewayName),
      vpnType = pulumi.Input.asOptionalInput<String>(vpnType),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoPropagate': ?autoPropagate,
      'bandwidth': bandwidth,
      'description': ?description,
      'disasterRecoveryVswitchId': ?disasterRecoveryVswitchId,
      'enableIpsec': ?enableIpsec,
      'enableSsl': ?enableSsl,
      'instanceChargeType': ?instanceChargeType,
      'name': ?name,
      'networkType': ?networkType,
      'paymentType': ?paymentType,
      'period': ?period,
      'resourceGroupId': ?resourceGroupId,
      'sslConnections': ?sslConnections,
      'tags': ?tags,
      'vpcId': vpcId,
      'vpnGatewayName': ?vpnGatewayName,
      'vpnType': ?vpnType,
      'vswitchId': ?vswitchId,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoPropagate: map['autoPropagate'] == null ? null : pulumi.Output.create<bool>(map['autoPropagate'] as bool),
      bandwidth: pulumi.Output.create<int>(map['bandwidth'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disasterRecoveryVswitchId: map['disasterRecoveryVswitchId'] == null ? null : pulumi.Output.create<String>(map['disasterRecoveryVswitchId'] as String),
      enableIpsec: map['enableIpsec'] == null ? null : pulumi.Output.create<bool>(map['enableIpsec'] as bool),
      enableSsl: map['enableSsl'] == null ? null : pulumi.Output.create<bool>(map['enableSsl'] as bool),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sslConnections: map['sslConnections'] == null ? null : pulumi.Output.create<int>(map['sslConnections'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vpnGatewayName: map['vpnGatewayName'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayName'] as String),
      vpnType: map['vpnType'] == null ? null : pulumi.Output.create<String>(map['vpnType'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

