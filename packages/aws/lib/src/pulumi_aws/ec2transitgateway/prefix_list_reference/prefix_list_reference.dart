import 'package:pulumi/pulumi.dart';
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
class PrefixListReference extends CustomResource {
  /// Indicates whether to drop traffic that matches the Prefix List. Defaults to `false`.
  late final Output<bool?> blackhole;

  /// Identifier of EC2 Prefix List.
  late final Output<String> prefixListId;
  late final Output<String> prefixListOwnerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final Output<String?> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// The following arguments are optional:
  late final Output<String> transitGatewayRouteTableId;

  PrefixListReference(
    String name, {
    PrefixListReferenceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/prefixListReference:PrefixListReference',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
