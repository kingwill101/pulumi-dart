import 'package:pulumi/pulumi.dart';
import '../default_route_table_association_timeouts/default_route_table_association_timeouts.dart';
import 'default_route_table_association_args.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) Transit Gateway Default Route Table Association.
///
/// ## Example Usage
///
/// ### Basic Usage
class DefaultRouteTableAssociation extends CustomResource {
  late final Output<String> originalDefaultRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<DefaultRouteTableAssociationTimeouts?> timeouts;

  /// ID of the Transit Gateway to change the default association route table on.
  late final Output<String> transitGatewayId;

  /// ID of the Transit Gateway Route Table to be made the default association route table.
  late final Output<String> transitGatewayRouteTableId;

  DefaultRouteTableAssociation(
    String name, {
    DefaultRouteTableAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/defaultRouteTableAssociation:DefaultRouteTableAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.originalDefaultRouteTableId =
        registerOutput<String>('originalDefaultRouteTableId');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<DefaultRouteTableAssociationTimeouts?>('timeouts');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.transitGatewayRouteTableId =
        registerOutput<String>('transitGatewayRouteTableId');
  }
}
