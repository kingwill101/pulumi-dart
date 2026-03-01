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
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? transitGatewayAttachmentId,
    pulumi.Output<String>? transitGatewayId,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vpnConcentratorId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpnConcentratorId = pulumi.Input.asOptionalInput<String>(vpnConcentratorId);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpnConcentratorId: map['vpnConcentratorId'] == null ? null : pulumi.Output.create<String>(map['vpnConcentratorId'] as String),
    );
  }
}

