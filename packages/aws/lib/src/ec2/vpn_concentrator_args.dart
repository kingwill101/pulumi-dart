// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpn_concentrator_vpn_concentrator_args_doc}
/// The set of arguments for VpnConcentrator.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpn_concentrator_vpn_concentrator_args_doc}
class VpnConcentratorArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the transit gateway to attach the VPN concentrator to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayId;

  /// Type of VPN concentrator. Valid value: `ipsec.1`.
  final pulumi.Input<String> type;

  /// Creates a new [VpnConcentratorArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] ID of the transit gateway to attach the VPN concentrator to.
  /// [type] Type of VPN concentrator. Valid value: `ipsec.1`.
  VpnConcentratorArgs({
    String? region,
    Map<String, String>? tags,
    required String transitGatewayId,
    required String type,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        transitGatewayId = pulumi.Input.asInput<String>(transitGatewayId),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['transitGatewayId'] = transitGatewayId;
    map['type'] = type;
    return map;
  }

  factory VpnConcentratorArgs.fromMap(Map<String, dynamic> map) {
    return VpnConcentratorArgs(
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
      type: map['type'] as String,
    );
  }
}
