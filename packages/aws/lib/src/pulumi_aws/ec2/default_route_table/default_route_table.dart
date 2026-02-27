import 'package:pulumi/pulumi.dart';
import '../default_route_table_route/default_route_table_route.dart';
import 'default_route_table_args.dart';

/// Provides a resource to manage a default route table of a VPC. This resource can manage the default route table of the default or a non-default VPC.
///
/// > **NOTE:** This is an advanced resource with special caveats. Please read this document in its entirety before using this resource. The `aws.ec2.DefaultRouteTable` resource behaves differently from normal resources. This provider does not _create_ this resource but instead attempts to "adopt" it into management. **Do not** use both `aws.ec2.DefaultRouteTable` to manage a default route table **and** `aws.ec2.MainRouteTableAssociation` with the same VPC due to possible route conflicts. See aws.ec2.MainRouteTableAssociation documentation for more details.
///
/// Every VPC has a default route table that can be managed but not destroyed. When the provider first adopts a default route table, it **immediately removes all defined routes**. It then proceeds to create any routes specified in the configuration. This step is required so that only the routes specified in the configuration exist in the default route table.
///
/// For more information, see the Amazon VPC User Guide on [Route Tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html). For information about managing normal route tables in this provider, see `aws.ec2.RouteTable`.
///
/// ## Example Usage
///
///
///
/// To subsequently remove all managed routes:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Default VPC route tables using the `vpc_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultRouteTable:DefaultRouteTable example vpc-33cc44dd
/// ```
///
/// [tf-main-route-table-association]: /docs/providers/aws/r/main_route_table_association.html
class DefaultRouteTable extends CustomResource {
  /// The ARN of the route table.
  late final Output<String> arn;

  /// ID of the default route table.
  ///
  /// The following arguments are optional:
  late final Output<String> defaultRouteTableId;

  /// ID of the AWS account that owns the route table.
  late final Output<String> ownerId;

  /// List of virtual gateways for propagation.
  late final Output<List<String>?> propagatingVgws;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of objects. Detailed below
  late final Output<List<DefaultRouteTableRoute>> routes;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ID of the VPC.
  late final Output<String> vpcId;

  DefaultRouteTable(
    String name, {
    DefaultRouteTableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultRouteTable:DefaultRouteTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    this.ownerId = registerOutput<String>('ownerId');
    this.propagatingVgws = registerOutput<List<String>?>('propagatingVgws');
    this.region = registerOutput<String>('region');
    this.routes = registerOutput<List<DefaultRouteTableRoute>>('routes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
