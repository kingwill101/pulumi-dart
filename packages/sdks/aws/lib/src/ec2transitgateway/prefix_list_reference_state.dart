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
    this.blackhole,
    this.prefixListId,
    this.prefixListOwnerId,
    this.region,
    this.transitGatewayAttachmentId,
    this.transitGatewayRouteTableId,
  });

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
      blackhole: map['blackhole'] == null ? null : ((map['blackhole'] as bool).input()).input(),
      prefixListId: map['prefixListId'] == null ? null : ((map['prefixListId'] as String).input()).input(),
      prefixListOwnerId: map['prefixListOwnerId'] == null ? null : ((map['prefixListOwnerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : ((map['transitGatewayAttachmentId'] as String).input()).input(),
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] == null ? null : ((map['transitGatewayRouteTableId'] as String).input()).input(),
    );
  }
}

