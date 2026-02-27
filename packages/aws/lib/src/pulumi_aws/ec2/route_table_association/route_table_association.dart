import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_association_args.dart';

/// Provides a resource to create an association between a route table and a subnet or a route table and an
/// internet gateway or virtual private gateway.
///
/// ## Example Usage
///
///
///
///
///
/// ## Import
///
/// With EC2 Internet Gateways:
///
///
/// **Using `pulumi import` to import** EC2 Route Table Associations using the associated resource ID and Route Table ID separated by a forward slash (`/`). For example:
///
/// With EC2 Subnets:
///
/// ```sh
/// $ pulumi import aws:ec2/routeTableAssociation:RouteTableAssociation assoc subnet-6777656e646f6c796e/rtb-656c65616e6f72
/// ```
///
/// With EC2 Internet Gateways:
///
/// ```sh
/// $ pulumi import aws:ec2/routeTableAssociation:RouteTableAssociation assoc igw-01b3a60780f8d034a/rtb-656c65616e6f72
/// ```
class RouteTableAssociation extends pulumi.CustomResource {
  /// The gateway ID to create an association. Conflicts with `subnet_id`.
  late final pulumi.Output<String?> gatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the routing table to associate with.
  ///
  /// > **NOTE:** Please note that one of either `subnet_id` or `gateway_id` is required.
  late final pulumi.Output<String> routeTableId;

  /// The subnet ID to create an association. Conflicts with `gateway_id`.
  late final pulumi.Output<String?> subnetId;

  RouteTableAssociation(
    String name, {
    RouteTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/routeTableAssociation:RouteTableAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.gatewayId = registerOutput<String?>('gatewayId');
    this.region = registerOutput<String>('region');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.subnetId = registerOutput<String?>('subnetId');
  }
}
