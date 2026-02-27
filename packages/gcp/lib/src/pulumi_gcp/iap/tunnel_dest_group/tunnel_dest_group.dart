import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_dest_group_args.dart';

/// Tunnel destination groups represent resources that have the same tunnel access restrictions.
///
///
/// To get more information about TunnelDestGroup, see:
///
/// * [API documentation](https://cloud.google.com/iap/docs/reference/rest/v1/projects.iap_tunnel.locations.destGroups)
/// * How-to Guides
/// * [Set up IAP TCP forwarding with an IP address or hostname in a Google Cloud or non-Google Cloud environment](https://cloud.google.com/iap/docs/tcp-by-host)
///
/// ## Example Usage
///
/// ### Iap Destgroup
///
///
///
///
/// ## Import
///
/// TunnelDestGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}`
///
/// * `{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}`
///
/// * `{{project}}/{{region}}/{{group_name}}`
///
/// * `{{region}}/destGroups/{{group_name}}`
///
/// * `{{region}}/{{group_name}}`
///
/// * `{{group_name}}`
///
/// When using the `pulumi import` command, TunnelDestGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{project}}/{{region}}/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{region}}/destGroups/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{region}}/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{group_name}}
/// ```
class TunnelDestGroup extends pulumi.CustomResource {
  /// List of CIDRs that this group applies to.
  late final pulumi.Output<List<String>?> cidrs;

  /// List of FQDNs that this group applies to.
  late final pulumi.Output<List<String>?> fqdns;

  /// Unique tunnel destination group name.
  late final pulumi.Output<String> groupName;

  /// Full resource name.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of the tunnel group. Must be the same as the network resources in the group.
  late final pulumi.Output<String> region;

  TunnelDestGroup(
    String name, {
    TunnelDestGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/tunnelDestGroup:TunnelDestGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrs = registerOutput<List<String>?>('cidrs');
    this.fqdns = registerOutput<List<String>?>('fqdns');
    this.groupName = registerOutput<String>('groupName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
