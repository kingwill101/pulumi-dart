// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_transit_gateway_attachment_accepter_timeouts.dart';

/// Input properties used for looking up and filtering FirewallTransitGatewayAttachmentAccepter resources.
class FirewallTransitGatewayAttachmentAccepterState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<FirewallTransitGatewayAttachmentAccepterTimeouts>? timeouts;
  /// The unique identifier of the transit gateway attachment to accept. This ID is returned in the response when creating a transit gateway-attached firewall.
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// Creates a new [FirewallTransitGatewayAttachmentAccepterState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [transitGatewayAttachmentId] The unique identifier of the transit gateway attachment to accept. This ID is returned in the response when creating a transit gateway-attached firewall.
  FirewallTransitGatewayAttachmentAccepterState({
    pulumi.Output<String>? region,
    pulumi.Output<FirewallTransitGatewayAttachmentAccepterTimeouts>? timeouts,
    pulumi.Output<String>? transitGatewayAttachmentId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<FirewallTransitGatewayAttachmentAccepterTimeouts>(timeouts),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FirewallTransitGatewayAttachmentAccepterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
    };
  }

  factory FirewallTransitGatewayAttachmentAccepterState.fromMap(Map<String, dynamic> map) {
    return FirewallTransitGatewayAttachmentAccepterState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<FirewallTransitGatewayAttachmentAccepterTimeouts>(FirewallTransitGatewayAttachmentAccepterTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
    );
  }
}

