import 'package:pulumi/pulumi.dart';
import 'egress_only_internet_gateway_args.dart';

/// [IPv6 only] Creates an egress-only Internet gateway for your VPC.
/// An egress-only Internet gateway is used to enable outbound communication
/// over IPv6 from instances in your VPC to the Internet, and prevents hosts
/// outside of your VPC from initiating an IPv6 connection with your instance.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Egress-only Internet gateways using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/egressOnlyInternetGateway:EgressOnlyInternetGateway example eigw-015e0e244e24dfe8a
/// ```
class EgressOnlyInternetGateway extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID to create in.
  late final Output<String> vpcId;

  EgressOnlyInternetGateway(
    String name, {
    EgressOnlyInternetGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/egressOnlyInternetGateway:EgressOnlyInternetGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
