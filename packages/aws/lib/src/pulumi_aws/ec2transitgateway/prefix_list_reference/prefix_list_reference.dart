import 'package:pulumi/pulumi.dart' as pulumi;
import 'prefix_list_reference_args.dart';

/// Manages an EC2 Transit Gateway Prefix List Reference.
///
/// ## Example Usage
///
/// ### Attachment Routing
///
///
///
/// ### Blackhole Routing
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PrefixListReference` using the EC2 Transit Gateway Route Table identifier and EC2 Prefix List identifier, separated by an underscore (`_`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/prefixListReference:PrefixListReference example tgw-rtb-12345678_pl-12345678
/// ```
class PrefixListReference extends pulumi.CustomResource {
  /// Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  late final pulumi.Output<bool?> blackhole;

  /// Identifier of EC2 Prefix List.
  late final pulumi.Output<String> prefixListId;
  late final pulumi.Output<String> prefixListOwnerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final pulumi.Output<String?> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayRouteTableId;

  PrefixListReference(
    String name, {
    PrefixListReferenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/prefixListReference:PrefixListReference',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blackhole = registerOutput<bool?>('blackhole');
    this.prefixListId = registerOutput<String>('prefixListId');
    this.prefixListOwnerId = registerOutput<String>('prefixListOwnerId');
    this.region = registerOutput<String>('region');
    this.transitGatewayAttachmentId =
        registerOutput<String?>('transitGatewayAttachmentId');
    this.transitGatewayRouteTableId =
        registerOutput<String>('transitGatewayRouteTableId');
  }
}
