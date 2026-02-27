import 'package:pulumi/pulumi.dart';
import '../link_bandwidth/link_bandwidth.dart';
import 'link_args.dart';

/// Manages a Network Manager link. Use this resource to create a link for a site.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.Link` using the link ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/link:Link example arn:aws:networkmanager::123456789012:link/global-network-0d47f6t230mz46dy4/link-444555aaabbb11223
/// ```
class Link extends CustomResource {
  /// Link ARN.
  late final Output<String> arn;

  /// Upload speed and download speed in Mbps. See below.
  late final Output<LinkBandwidth> bandwidth;

  /// Description of the link.
  late final Output<String?> description;

  /// ID of the global network.
  late final Output<String> globalNetworkId;

  /// Provider of the link.
  late final Output<String?> providerName;

  /// ID of the site.
  ///
  /// The following arguments are optional:
  late final Output<String> siteId;

  /// Key-value tags for the link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of the link.
  late final Output<String?> type;

  Link(
    String name, {
    LinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/link:Link',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bandwidth = registerOutput<LinkBandwidth>('bandwidth');
    this.description = registerOutput<String?>('description');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.providerName = registerOutput<String?>('providerName');
    this.siteId = registerOutput<String>('siteId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
  }
}
