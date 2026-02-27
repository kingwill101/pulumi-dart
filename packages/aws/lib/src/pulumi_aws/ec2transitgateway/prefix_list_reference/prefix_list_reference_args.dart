// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PrefixListReference.
class PrefixListReferenceArgs {
  /// Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  final Input<bool>? blackhole;

  /// Identifier of EC2 Prefix List.
  final Input<String> prefixListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of EC2 Transit Gateway Attachment.
  final Input<String>? transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// The following arguments are optional:
  final Input<String> transitGatewayRouteTableId;

  PrefixListReferenceArgs({
    this.blackhole,
    required this.prefixListId,
    this.region,
    this.transitGatewayAttachmentId,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blackholeValue = blackhole;
    if (blackholeValue != null) {
      map['blackhole'] = blackholeValue;
    }
    map['prefixListId'] = prefixListId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final transitGatewayAttachmentIdValue = transitGatewayAttachmentId;
    if (transitGatewayAttachmentIdValue != null) {
      map['transitGatewayAttachmentId'] = transitGatewayAttachmentIdValue;
    }
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory PrefixListReferenceArgs.fromMap(Map<String, dynamic> map) {
    return PrefixListReferenceArgs(
      blackhole: Input.asOptionalInput<bool>(map['blackhole']),
      prefixListId: Input.asInput<String>(map['prefixListId']),
      region: Input.asOptionalInput<String>(map['region']),
      transitGatewayAttachmentId:
          Input.asOptionalInput<String>(map['transitGatewayAttachmentId']),
      transitGatewayRouteTableId:
          Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
