// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionNetworkParameters {
  /// The network type. Valid values: `PublicNetwork`, `PrivateNetwork`. **NOTE:** If you set `network_type` to `PrivateNetwork`, you must configure `vpc_id`, `vswitche_id`, and `security_group_id`.
  final pulumi.Input<String> networkType;
  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The ID of the VSwitch.
  final pulumi.Input<String>? vswitcheId;

  /// Creates a new [ConnectionNetworkParameters].
  /// [networkType] The network type. Valid values: `PublicNetwork`, `PrivateNetwork`. **NOTE:** If you set `network_type` to `PrivateNetwork`, you must configure `vpc_id`, `vswitche_id`, and `security_group_id`.
  /// [securityGroupId] The ID of the security group.
  /// [vpcId] The ID of the VPC.
  /// [vswitcheId] The ID of the VSwitch.
  const ConnectionNetworkParameters({
    required this.networkType,
    this.securityGroupId,
    this.vpcId,
    this.vswitcheId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkType': networkType,
      'securityGroupId': ?securityGroupId,
      'vpcId': ?vpcId,
      'vswitcheId': ?vswitcheId,
    };
  }

  factory ConnectionNetworkParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionNetworkParameters(
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitcheId: (() { final guardedValue = map['vswitcheId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

