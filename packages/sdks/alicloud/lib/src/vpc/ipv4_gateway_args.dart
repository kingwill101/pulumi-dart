// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipv4_gateway_ipv4_gateway_args_doc}
/// The set of arguments for Ipv4Gateway.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipv4_gateway_ipv4_gateway_args_doc}
class Ipv4GatewayArgs {
  /// Whether to PreCheck only this request. Value:-**true**: The check request is sent without creating an IPv4 Gateway. Check items include whether required parameters, request format, and business restrictions are filled in. If the check does not pass, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns an HTTP 2xx status code and directly creates an IPv4 Gateway.
  final pulumi.Input<bool>? dryRun;
  /// Whether the IPv4 gateway is active or not. Valid values are `true` and `false`.
  final pulumi.Input<bool>? enabled;
  /// The public network traffic mode of the VPC after the IPv4 Gateway is deleted:
  final pulumi.Input<String>? internetMode;
  /// The description of the IPv4 gateway. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with http:// or https://.
  final pulumi.Input<String>? ipv4GatewayDescription;
  /// The name of the IPv4 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? ipv4GatewayName;
  /// The ID of the resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The tags of the current resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) where you want to create the IPv4 gateway. You can create only one IPv4 gateway in a VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [Ipv4GatewayArgs].
  /// [dryRun] Whether to PreCheck only this request. Value:-**true**: The check request is sent without creating an IPv4 Gateway. Check items include whether required parameters, request format, and business restrictions are filled in. If the check does not pass, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns an HTTP 2xx status code and directly creates an IPv4 Gateway.
  /// [enabled] Whether the IPv4 gateway is active or not. Valid values are `true` and `false`.
  /// [internetMode] The public network traffic mode of the VPC after the IPv4 Gateway is deleted:
  /// [ipv4GatewayDescription] The description of the IPv4 gateway. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with http:// or https://.
  /// [ipv4GatewayName] The name of the IPv4 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [tags] The tags of the current resource.
  /// [vpcId] The ID of the virtual private cloud (VPC) where you want to create the IPv4 gateway. You can create only one IPv4 gateway in a VPC.
  Ipv4GatewayArgs({
    this.dryRun,
    this.enabled,
    this.internetMode,
    this.ipv4GatewayDescription,
    this.ipv4GatewayName,
    this.resourceGroupId,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'enabled': ?enabled,
      'internetMode': ?internetMode,
      'ipv4GatewayDescription': ?ipv4GatewayDescription,
      'ipv4GatewayName': ?ipv4GatewayName,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory Ipv4GatewayArgs.fromMap(Map<String, dynamic> map) {
    return Ipv4GatewayArgs(
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      internetMode: map['internetMode'] == null ? null : (map['internetMode']! as String).input(),
      ipv4GatewayDescription: map['ipv4GatewayDescription'] == null ? null : (map['ipv4GatewayDescription']! as String).input(),
      ipv4GatewayName: map['ipv4GatewayName'] == null ? null : (map['ipv4GatewayName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

