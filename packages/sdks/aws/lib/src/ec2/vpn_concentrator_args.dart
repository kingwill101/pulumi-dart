// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpn_concentrator_vpn_concentrator_args_doc}
/// The set of arguments for VpnConcentrator.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpn_concentrator_vpn_concentrator_args_doc}
class VpnConcentratorArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the transit gateway to attach the VPN concentrator to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayId;
  /// Type of VPN concentrator. Valid value: `ipsec.1`.
  final pulumi.Input<String> type;

  /// Creates a new [VpnConcentratorArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] ID of the transit gateway to attach the VPN concentrator to.
  /// [type] Type of VPN concentrator. Valid value: `ipsec.1`.
  const VpnConcentratorArgs({
    this.region,
    this.tags,
    required this.transitGatewayId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'transitGatewayId': transitGatewayId,
      'type': type,
    };
  }

  factory VpnConcentratorArgs.fromMap(Map<String, dynamic> map) {
    return VpnConcentratorArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayId: pulumi.Input.fromValue(map['transitGatewayId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
