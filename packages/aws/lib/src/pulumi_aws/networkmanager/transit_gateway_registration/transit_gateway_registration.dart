import 'package:pulumi/pulumi.dart';
import 'transit_gateway_registration_args.dart';

/// Manages a Network Manager transit gateway registration. Registers a transit gateway to a global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.TransitGatewayRegistration` using the global network ID and transit gateway ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/transitGatewayRegistration:TransitGatewayRegistration example global-network-0d47f6t230mz46dy4,arn:aws:ec2:us-west-2:123456789012:transit-gateway/tgw-123abc05e04123abc
/// ```
class TransitGatewayRegistration extends CustomResource {
  /// ID of the Global Network to register to.
  late final Output<String> globalNetworkId;

  /// ARN of the Transit Gateway to register.
  late final Output<String> transitGatewayArn;

  TransitGatewayRegistration(
    String name, {
    TransitGatewayRegistrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayRegistration:TransitGatewayRegistration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.transitGatewayArn = registerOutput<String>('transitGatewayArn');
  }
}
