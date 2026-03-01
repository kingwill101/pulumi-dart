// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrefixListReference resources.
class PrefixListReferenceState {
  /// Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  final pulumi.Input<bool>? blackhole;
  /// Identifier of EC2 Prefix List.
  final pulumi.Input<String>? prefixListId;
  final pulumi.Input<String>? prefixListOwnerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String>? transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? transitGatewayRouteTableId;

  /// Creates a new [PrefixListReferenceState].
  /// [blackhole] Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  /// [prefixListId] Identifier of EC2 Prefix List.
  /// [prefixListOwnerId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment.
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  PrefixListReferenceState({
    pulumi.Output<bool>? blackhole,
    pulumi.Output<String>? prefixListId,
    pulumi.Output<String>? prefixListOwnerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? transitGatewayAttachmentId,
    pulumi.Output<String>? transitGatewayRouteTableId,
  }) :
      blackhole = pulumi.Input.asOptionalInput<bool>(blackhole),
      prefixListId = pulumi.Input.asOptionalInput<String>(prefixListId),
      prefixListOwnerId = pulumi.Input.asOptionalInput<String>(prefixListOwnerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
      transitGatewayRouteTableId = pulumi.Input.asOptionalInput<String>(transitGatewayRouteTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blackhole': ?blackhole,
      'prefixListId': ?prefixListId,
      'prefixListOwnerId': ?prefixListOwnerId,
      'region': ?region,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayRouteTableId': ?transitGatewayRouteTableId,
    };
  }

  factory PrefixListReferenceState.fromMap(Map<String, dynamic> map) {
    return PrefixListReferenceState(
      blackhole: map['blackhole'] == null ? null : pulumi.Output.create<bool>(map['blackhole'] as bool),
      prefixListId: map['prefixListId'] == null ? null : pulumi.Output.create<String>(map['prefixListId'] as String),
      prefixListOwnerId: map['prefixListOwnerId'] == null ? null : pulumi.Output.create<String>(map['prefixListOwnerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayRouteTableId'] as String),
    );
  }
}

