// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_transit_gateway_attachment_accepter_timeouts.dart';

/// {@template pulumi_networkfirewall_firewall_transit_gateway_attachment_accepter_firewall_transit_gateway_attachment_accepter_args_doc}
/// The set of arguments for FirewallTransitGatewayAttachmentAccepter.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_firewall_transit_gateway_attachment_accepter_firewall_transit_gateway_attachment_accepter_args_doc}
class FirewallTransitGatewayAttachmentAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<FirewallTransitGatewayAttachmentAccepterTimeouts>?
  timeouts;

  /// The unique identifier of the transit gateway attachment to accept. This ID is returned in the response when creating a transit gateway-attached firewall.
  final pulumi.Input<String> transitGatewayAttachmentId;

  /// Creates a new [FirewallTransitGatewayAttachmentAccepterArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [transitGatewayAttachmentId] The unique identifier of the transit gateway attachment to accept. This ID is returned in the response when creating a transit gateway-attached firewall.
  FirewallTransitGatewayAttachmentAccepterArgs({
    String? region,
    FirewallTransitGatewayAttachmentAccepterTimeouts? timeouts,
    required String transitGatewayAttachmentId,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       timeouts =
           pulumi.Input.asOptionalInput<
             FirewallTransitGatewayAttachmentAccepterTimeouts
           >(timeouts),
       transitGatewayAttachmentId = pulumi.Input.asInput<String>(
         transitGatewayAttachmentId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallTransitGatewayAttachmentAccepterTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
    };
  }

  factory FirewallTransitGatewayAttachmentAccepterArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallTransitGatewayAttachmentAccepterArgs(
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : FirewallTransitGatewayAttachmentAccepterTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] as String,
    );
  }
}
