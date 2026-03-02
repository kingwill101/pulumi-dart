// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_prefix_list_reference_prefix_list_reference_args_doc}
/// The set of arguments for PrefixListReference.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_prefix_list_reference_prefix_list_reference_args_doc}
class PrefixListReferenceArgs {
  /// Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  final pulumi.Input<bool>? blackhole;
  /// Identifier of EC2 Prefix List.
  final pulumi.Input<String> prefixListId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String>? transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayRouteTableId;

  /// Creates a new [PrefixListReferenceArgs].
  /// [blackhole] Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  /// [prefixListId] Identifier of EC2 Prefix List.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment.
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  PrefixListReferenceArgs({
    this.blackhole,
    required this.prefixListId,
    this.region,
    this.transitGatewayAttachmentId,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blackhole': ?blackhole,
      'prefixListId': prefixListId,
      'region': ?region,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayRouteTableId': transitGatewayRouteTableId,
    };
  }

  factory PrefixListReferenceArgs.fromMap(Map<String, dynamic> map) {
    return PrefixListReferenceArgs(
      blackhole: map['blackhole'] == null ? null : (map['blackhole'] as bool).input(),
      prefixListId: (map['prefixListId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : (map['transitGatewayAttachmentId'] as String).input(),
      transitGatewayRouteTableId: (map['transitGatewayRouteTableId'] as String).input(),
    );
  }
}

