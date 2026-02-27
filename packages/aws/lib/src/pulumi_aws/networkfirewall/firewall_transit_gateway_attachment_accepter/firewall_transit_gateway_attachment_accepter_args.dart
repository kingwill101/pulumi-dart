// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../firewall_transit_gateway_attachment_accepter_timeouts/firewall_transit_gateway_attachment_accepter_timeouts.dart';

/// The set of arguments for FirewallTransitGatewayAttachmentAccepter.
class FirewallTransitGatewayAttachmentAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<FirewallTransitGatewayAttachmentAccepterTimeouts>?
      timeouts;

  /// The unique identifier of the transit gateway attachment to accept. This ID is returned in the response when creating a transit gateway-attached firewall.
  final pulumi.Input<String> transitGatewayAttachmentId;

  FirewallTransitGatewayAttachmentAccepterArgs({
    this.region,
    this.timeouts,
    required this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          FirewallTransitGatewayAttachmentAccepterTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['transitGatewayAttachmentId'] = transitGatewayAttachmentId;
    return map;
  }

  factory FirewallTransitGatewayAttachmentAccepterArgs.fromMap(
      Map<String, dynamic> map) {
    return FirewallTransitGatewayAttachmentAccepterArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts: pulumi.Input.asOptionalInput<
          FirewallTransitGatewayAttachmentAccepterTimeouts>(map['timeouts']),
      transitGatewayAttachmentId:
          pulumi.Input.asInput<String>(map['transitGatewayAttachmentId']),
    );
  }
}
