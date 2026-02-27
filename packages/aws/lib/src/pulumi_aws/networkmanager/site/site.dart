import 'package:pulumi/pulumi.dart' as pulumi;
import '../site_location/site_location.dart';
import 'site_args.dart';

/// Manages a Network Manager site. Use this resource to create a site in a global network.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.Site` using the site ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/site:Site example arn:aws:networkmanager::123456789012:site/global-network-0d47f6t230mz46dy4/site-444555aaabbb11223
/// ```
class Site extends pulumi.CustomResource {
  /// Site ARN.
  late final pulumi.Output<String> arn;

  /// Description of the Site.
  late final pulumi.Output<String?> description;

  /// ID of the Global Network to create the site in.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> globalNetworkId;

  /// Site location. See below.
  late final pulumi.Output<SiteLocation?> location;

  /// Key-value tags for the Site. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Site(
    String name, {
    SiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/site:Site',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.location = registerOutput<SiteLocation?>('location');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
