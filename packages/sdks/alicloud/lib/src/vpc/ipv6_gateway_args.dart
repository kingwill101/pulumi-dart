// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipv6_gateway_ipv6_gateway_args_doc}
/// The set of arguments for Ipv6Gateway.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipv6_gateway_ipv6_gateway_args_doc}
class Ipv6GatewayArgs {
  /// The description of the IPv6 gateway. The description must be 2 to 256 characters in length. It cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// The name of the IPv6 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with http:// or https://.
  final pulumi.Input<String>? ipv6GatewayName;
  /// The ID of the resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// IPv6 gateways do not distinguish between specifications. This parameter is no longer used.
  final pulumi.Input<String>? spec;
  /// The tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) for which you want to create the IPv6 gateway.
  final pulumi.Input<String> vpcId;

  /// Creates a new [Ipv6GatewayArgs].
  /// [description] The description of the IPv6 gateway. The description must be 2 to 256 characters in length. It cannot start with http:// or https://.
  /// [ipv6GatewayName] The name of the IPv6 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with http:// or https://.
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [spec] IPv6 gateways do not distinguish between specifications. This parameter is no longer used.
  /// [tags] The tags for the resource.
  /// [vpcId] The ID of the virtual private cloud (VPC) for which you want to create the IPv6 gateway.
  Ipv6GatewayArgs({
    this.description,
    this.ipv6GatewayName,
    this.resourceGroupId,
    this.spec,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipv6GatewayName': ?ipv6GatewayName,
      'resourceGroupId': ?resourceGroupId,
      'spec': ?spec,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory Ipv6GatewayArgs.fromMap(Map<String, dynamic> map) {
    return Ipv6GatewayArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ipv6GatewayName: map['ipv6GatewayName'] == null ? null : (map['ipv6GatewayName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      spec: map['spec'] == null ? null : (map['spec']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

