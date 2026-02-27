import 'package:pulumi/pulumi.dart';
import 'cross_site_network_args.dart';

/// Represents a cross-site-network resource. A CrossSiteNetwork is used to establish L2 connectivity between groups of Interconnects.
///
///
/// To get more information about CrossSiteNetwork, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/crossSiteNetworks)
/// * How-to Guides
/// * [Create a Cross-Site Interconnect](https://cloud.google.com/network-connectivity/docs/interconnect/how-to/cross-site/create-network)
///
/// ## Example Usage
///
/// ### Compute Cross Site Network Basic
///
///
///
///
/// ## Import
///
/// CrossSiteNetwork can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/crossSiteNetworks/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, CrossSiteNetwork can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/crossSiteNetwork:CrossSiteNetwork default projects/{{project}}/global/crossSiteNetworks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/crossSiteNetwork:CrossSiteNetwork default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/crossSiteNetwork:CrossSiteNetwork default {{name}}
/// ```
class CrossSiteNetwork extends CustomResource {
  /// An optional description of this resource.
  late final Output<String?> description;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  CrossSiteNetwork(
    String name, {
    CrossSiteNetworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/crossSiteNetwork:CrossSiteNetwork',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
