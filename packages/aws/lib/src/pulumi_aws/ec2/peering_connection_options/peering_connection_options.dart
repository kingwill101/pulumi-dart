import 'package:pulumi/pulumi.dart' as pulumi;
import '../peering_connection_options_accepter/peering_connection_options_accepter.dart';
import '../peering_connection_options_requester/peering_connection_options_requester.dart';
import 'peering_connection_options_args.dart';

/// Provides a resource to manage VPC peering connection options.
///
/// > **NOTE on VPC Peering Connections and VPC Peering Connection Options:** This provider provides
/// both a standalone VPC Peering Connection Options and a VPC Peering Connection
/// resource with `accepter` and `requester` attributes. Do not manage options for the same VPC peering
/// connection in both a VPC Peering Connection resource and a VPC Peering Connection Options resource.
/// Doing so will cause a conflict of options and will overwrite the options.
/// Using a VPC Peering Connection Options resource decouples management of the connection options from
/// management of the VPC Peering Connection and allows options to be set correctly in cross-region and
/// cross-account scenarios.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Cross-Account Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Peering Connection Options using the VPC peering `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/peeringConnectionOptions:PeeringConnectionOptions foo pcx-111aaa111
/// ```
class PeeringConnectionOptions extends pulumi.CustomResource {
  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts the peering connection (a maximum of one).
  late final pulumi.Output<PeeringConnectionOptionsAccepter> accepter;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests the peering connection (a maximum of one).
  late final pulumi.Output<PeeringConnectionOptionsRequester> requester;

  /// The ID of the requester VPC peering connection.
  late final pulumi.Output<String> vpcPeeringConnectionId;

  PeeringConnectionOptions(
    String name, {
    PeeringConnectionOptionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/peeringConnectionOptions:PeeringConnectionOptions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accepter =
        registerOutput<PeeringConnectionOptionsAccepter>('accepter');
    this.region = registerOutput<String>('region');
    this.requester =
        registerOutput<PeeringConnectionOptionsRequester>('requester');
    this.vpcPeeringConnectionId =
        registerOutput<String>('vpcPeeringConnectionId');
  }
}
