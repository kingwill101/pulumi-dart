// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrefixListReference resources.
class PrefixListReferenceState {
  /// Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  final pulumi.Input<bool?>? blackhole;
  /// Identifier of EC2 Prefix List.
  final pulumi.Input<String?>? prefixListId;
  final pulumi.Input<String?>? prefixListOwnerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String?>? transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? transitGatewayRouteTableId;

  /// Creates a new [PrefixListReferenceState].
  /// [blackhole] Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  /// [prefixListId] Identifier of EC2 Prefix List.
  /// [prefixListOwnerId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment.
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  const PrefixListReferenceState({
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
      blackhole: (() { final guardedValue = map['blackhole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixListOwnerId: (() { final guardedValue = map['prefixListOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayAttachmentId: (() { final guardedValue = map['transitGatewayAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayRouteTableId: (() { final guardedValue = map['transitGatewayRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
