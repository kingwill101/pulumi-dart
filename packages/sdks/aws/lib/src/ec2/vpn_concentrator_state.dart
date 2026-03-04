// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpnConcentrator resources.
class VpnConcentratorState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// ID of the transit gateway attachment created for the VPN concentrator.
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// ID of the transit gateway to attach the VPN concentrator to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? transitGatewayId;

  /// Type of VPN concentrator. Valid value: `ipsec.1`.
  final pulumi.Input<String>? type;

  /// ID of the VPN Concentrator.
  final pulumi.Input<String>? vpnConcentratorId;

  /// Creates a new [VpnConcentratorState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayAttachmentId] ID of the transit gateway attachment created for the VPN concentrator.
  /// [transitGatewayId] ID of the transit gateway to attach the VPN concentrator to.
  /// [type] Type of VPN concentrator. Valid value: `ipsec.1`.
  /// [vpnConcentratorId] ID of the VPN Concentrator.
  VpnConcentratorState({
    this.region,
    this.tags,
    this.tagsAll,
    this.transitGatewayAttachmentId,
    this.transitGatewayId,
    this.type,
    this.vpnConcentratorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayId': ?transitGatewayId,
      'type': ?type,
      'vpnConcentratorId': ?vpnConcentratorId,
    };
  }

  factory VpnConcentratorState.fromMap(Map<String, dynamic> map) {
    return VpnConcentratorState(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitGatewayAttachmentId: (() {
        final guardedValue = map['transitGatewayAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitGatewayId: (() {
        final guardedValue = map['transitGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpnConcentratorId: (() {
        final guardedValue = map['vpnConcentratorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
