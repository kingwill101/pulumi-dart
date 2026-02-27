import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_concentrator_args.dart';

/// Provides a resource to create a VPN Concentrator that aggregates multiple VPN connections to a transit gateway.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPN Concentrators using the VPN concentrator ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpnConcentrator:VpnConcentrator example vcn-12345678
/// ```
class VpnConcentrator extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ID of the transit gateway attachment created for the VPN concentrator.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// ID of the transit gateway to attach the VPN concentrator to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayId;

  /// Type of VPN concentrator. Valid value: `ipsec.1`.
  late final pulumi.Output<String> type;

  /// ID of the VPN Concentrator.
  late final pulumi.Output<String> vpnConcentratorId;

  VpnConcentrator(
    String name, {
    VpnConcentratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConcentrator:VpnConcentrator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.type = registerOutput<String>('type');
    this.vpnConcentratorId = registerOutput<String>('vpnConcentratorId');
  }
}
