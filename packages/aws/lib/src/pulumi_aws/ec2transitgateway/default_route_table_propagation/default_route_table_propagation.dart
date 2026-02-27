import 'package:pulumi/pulumi.dart' as pulumi;
import '../default_route_table_propagation_timeouts/default_route_table_propagation_timeouts.dart';
import 'default_route_table_propagation_args.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) Transit Gateway Default Route Table Propagation.
///
/// ## Example Usage
///
/// ### Basic Usage
class DefaultRouteTablePropagation extends pulumi.CustomResource {
  late final pulumi.Output<String> originalDefaultRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<DefaultRouteTablePropagationTimeouts?> timeouts;

  /// ID of the Transit Gateway to change the default association route table on.
  late final pulumi.Output<String> transitGatewayId;

  /// ID of the Transit Gateway Route Table to be made the default association route table.
  late final pulumi.Output<String> transitGatewayRouteTableId;

  DefaultRouteTablePropagation(
    String name, {
    DefaultRouteTablePropagationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/defaultRouteTablePropagation:DefaultRouteTablePropagation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.originalDefaultRouteTableId =
        registerOutput<String>('originalDefaultRouteTableId');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<DefaultRouteTablePropagationTimeouts?>('timeouts');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.transitGatewayRouteTableId =
        registerOutput<String>('transitGatewayRouteTableId');
  }
}
