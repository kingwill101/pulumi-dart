import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_gateway_association_args.dart';

/// Manages a Network Manager Customer Gateway Association.
///
/// Use this resource to associate a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.CustomerGatewayAssociation` using the global network ID and customer gateway ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/customerGatewayAssociation:CustomerGatewayAssociation example global-network-0d47f6t230mz46dy4,arn:aws:ec2:us-west-2:123456789012:customer-gateway/cgw-123abc05e04123abc
/// ```
class CustomerGatewayAssociation extends pulumi.CustomResource {
  /// ARN of the customer gateway.
  late final pulumi.Output<String> customerGatewayArn;

  /// ID of the device.
  late final pulumi.Output<String> deviceId;

  /// ID of the global network.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> globalNetworkId;

  /// ID of the link.
  late final pulumi.Output<String?> linkId;

  CustomerGatewayAssociation(
    String name, {
    CustomerGatewayAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/customerGatewayAssociation:CustomerGatewayAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customerGatewayArn = registerOutput<String>('customerGatewayArn');
    this.deviceId = registerOutput<String>('deviceId');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.linkId = registerOutput<String?>('linkId');
  }
}
