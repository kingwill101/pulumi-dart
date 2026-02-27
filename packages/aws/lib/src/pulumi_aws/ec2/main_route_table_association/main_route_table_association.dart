import 'package:pulumi/pulumi.dart';
import 'main_route_table_association_args.dart';

/// Provides a resource for managing the main routing table of a VPC.
///
/// > **NOTE:** **Do not** use both `aws.ec2.DefaultRouteTable` to manage a default route table **and** `aws.ec2.MainRouteTableAssociation` with the same VPC due to possible route conflicts. See aws.ec2.DefaultRouteTable documentation for more details.
/// For more information, see the Amazon VPC User Guide on [Route Tables][aws-route-tables]. For information about managing normal route tables in Pulumi, see [`aws.ec2.RouteTable`][tf-route-tables].
///
/// ## Example Usage
///
///
///
/// ## Notes
///
/// On VPC creation, the AWS API always creates an initial Main Route Table. This
/// resource records the ID of that Route Table under `original_route_table_id`.
/// The "Delete" action for a `main_route_table_association` consists of resetting
/// this original table as the Main Route Table for the VPC. You'll see this
/// additional Route Table in the AWS console; it must remain intact in order for
/// the `main_route_table_association` delete to work properly.
class MainRouteTableAssociation extends CustomResource {
  /// Used internally, see **Notes** below
  late final Output<String> originalRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the Route Table to set as the new
  /// main route table for the target VPC
  late final Output<String> routeTableId;

  /// The ID of the VPC whose main route table should be set
  late final Output<String> vpcId;

  MainRouteTableAssociation(
    String name, {
    MainRouteTableAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/mainRouteTableAssociation:MainRouteTableAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.originalRouteTableId = registerOutput<String>('originalRouteTableId');
    this.region = registerOutput<String>('region');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
