import 'package:pulumi/pulumi.dart' as pulumi;
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
class TransitGatewayRegistration extends pulumi.CustomResource {
  /// ID of the Global Network to register to.
  late final pulumi.Output<String> globalNetworkId;

  /// ARN of the Transit Gateway to register.
  late final pulumi.Output<String> transitGatewayArn;

  TransitGatewayRegistration(
    String name, {
    TransitGatewayRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayRegistration:TransitGatewayRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.transitGatewayArn = registerOutput<String>('transitGatewayArn');
  }
}
