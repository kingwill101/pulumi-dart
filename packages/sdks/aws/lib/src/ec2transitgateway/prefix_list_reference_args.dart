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
    pulumi.Output<bool>? blackhole,
    required pulumi.Output<String> prefixListId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? transitGatewayAttachmentId,
    required pulumi.Output<String> transitGatewayRouteTableId,
  }) :
      blackhole = pulumi.Input.asOptionalInput<bool>(blackhole),
      prefixListId = pulumi.Input.asInput<String>(prefixListId),
      region = pulumi.Input.asOptionalInput<String>(region),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
      transitGatewayRouteTableId = pulumi.Input.asInput<String>(transitGatewayRouteTableId);

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
      blackhole: map['blackhole'] == null ? null : pulumi.Output.create<bool>(map['blackhole'] as bool),
      prefixListId: pulumi.Output.create<String>(map['prefixListId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayRouteTableId: pulumi.Output.create<String>(map['transitGatewayRouteTableId'] as String),
    );
  }
}

