// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ipv4Gateway resources.
class Ipv4GatewayState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Whether to PreCheck only this request. Value:-**true**: The check request is sent without creating an IPv4 Gateway. Check items include whether required parameters, request format, and business restrictions are filled in. If the check does not pass, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns an HTTP 2xx status code and directly creates an IPv4 Gateway.
  final pulumi.Input<bool>? dryRun;
  /// Whether the IPv4 gateway is active or not. Valid values are `true` and `false`.
  final pulumi.Input<bool>? enabled;
  /// The public network traffic mode of the VPC after the IPv4 Gateway is deleted:
  final pulumi.Input<String>? internetMode;
  /// The description of the IPv4 gateway. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with http:// or https://.
  final pulumi.Input<String>? ipv4GatewayDescription;
  /// Resource primary key field.
  final pulumi.Input<String>? ipv4GatewayId;
  /// The name of the IPv4 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? ipv4GatewayName;
  /// ID of the route table associated with IPv4 Gateway
  final pulumi.Input<String>? ipv4GatewayRouteTableId;
  /// The ID of the resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tags of the current resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) where you want to create the IPv4 gateway. You can create only one IPv4 gateway in a VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [Ipv4GatewayState].
  /// [createTime] The creation time of the resource
  /// [dryRun] Whether to PreCheck only this request. Value:-**true**: The check request is sent without creating an IPv4 Gateway. Check items include whether required parameters, request format, and business restrictions are filled in. If the check does not pass, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns an HTTP 2xx status code and directly creates an IPv4 Gateway.
  /// [enabled] Whether the IPv4 gateway is active or not. Valid values are `true` and `false`.
  /// [internetMode] The public network traffic mode of the VPC after the IPv4 Gateway is deleted:
  /// [ipv4GatewayDescription] The description of the IPv4 gateway. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with http:// or https://.
  /// [ipv4GatewayId] Resource primary key field.
  /// [ipv4GatewayName] The name of the IPv4 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  /// [ipv4GatewayRouteTableId] ID of the route table associated with IPv4 Gateway
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [status] The status of the resource
  /// [tags] The tags of the current resource.
  /// [vpcId] The ID of the virtual private cloud (VPC) where you want to create the IPv4 gateway. You can create only one IPv4 gateway in a VPC.
  const Ipv4GatewayState({
    this.createTime,
    this.dryRun,
    this.enabled,
    this.internetMode,
    this.ipv4GatewayDescription,
    this.ipv4GatewayId,
    this.ipv4GatewayName,
    this.ipv4GatewayRouteTableId,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dryRun': ?dryRun,
      'enabled': ?enabled,
      'internetMode': ?internetMode,
      'ipv4GatewayDescription': ?ipv4GatewayDescription,
      'ipv4GatewayId': ?ipv4GatewayId,
      'ipv4GatewayName': ?ipv4GatewayName,
      'ipv4GatewayRouteTableId': ?ipv4GatewayRouteTableId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory Ipv4GatewayState.fromMap(Map<String, dynamic> map) {
    return Ipv4GatewayState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internetMode: (() { final guardedValue = map['internetMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4GatewayDescription: (() { final guardedValue = map['ipv4GatewayDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4GatewayId: (() { final guardedValue = map['ipv4GatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4GatewayName: (() { final guardedValue = map['ipv4GatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4GatewayRouteTableId: (() { final guardedValue = map['ipv4GatewayRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

