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
    this.autoPay,
    this.autoPropagate,
    required this.bandwidth,
    this.description,
    this.disasterRecoveryVswitchId,
    this.enableIpsec,
    this.enableSsl,
    this.instanceChargeType,
    this.name,
    this.networkType,
    this.paymentType,
    this.period,
    this.resourceGroupId,
    this.sslConnections,
    this.tags,
    required this.vpcId,
    this.vpnGatewayName,
    this.vpnType,
    this.vswitchId,
  });

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
      autoPay: (() {
        final guardedValue = map['autoPay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoPropagate: (() {
        final guardedValue = map['autoPropagate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disasterRecoveryVswitchId: (() {
        final guardedValue = map['disasterRecoveryVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableIpsec: (() {
        final guardedValue = map['enableIpsec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableSsl: (() {
        final guardedValue = map['enableSsl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceChargeType: (() {
        final guardedValue = map['instanceChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslConnections: (() {
        final guardedValue = map['sslConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpnGatewayName: (() {
        final guardedValue = map['vpnGatewayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpnType: (() {
        final guardedValue = map['vpnType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
