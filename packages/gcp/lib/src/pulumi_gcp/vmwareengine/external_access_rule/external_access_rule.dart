import 'package:pulumi/pulumi.dart' as pulumi;
import '../external_access_rule_destination_ip_range/external_access_rule_destination_ip_range.dart';
import '../external_access_rule_source_ip_range/external_access_rule_source_ip_range.dart';
import 'external_access_rule_args.dart';

/// External access firewall rules for filtering incoming traffic destined to `ExternalAddress` resources.
///
///
/// To get more information about ExternalAccessRule, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies.externalAccessRules)
///
/// ## Example Usage
///
/// ### Vmware Engine External Access Rule Basic
///
///
///
/// ### Vmware Engine External Access Rule Full
///
///
///
///
/// ## Import
///
/// ExternalAccessRule can be imported using any of these accepted formats:
///
/// * `{{parent}}/externalAccessRules/{{name}}`
///
/// When using the `pulumi import` command, ExternalAccessRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/externalAccessRule:ExternalAccessRule default {{parent}}/externalAccessRules/{{name}}
/// ```
class ExternalAccessRule extends pulumi.CustomResource {
  /// The action that the external access rule performs.
  /// Possible values are: `ALLOW`, `DENY`.
  late final pulumi.Output<String> action;

  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// User-provided description for the external access rule.
  late final pulumi.Output<String?> description;

  /// If destination ranges are specified, the external access rule applies only to
  /// traffic that has a destination IP address in these ranges.
  /// Structure is documented below.
  late final pulumi.Output<List<ExternalAccessRuleDestinationIpRange>>
      destinationIpRanges;

  /// A list of destination ports to which the external access rule applies.
  late final pulumi.Output<List<String>> destinationPorts;

  /// The IP protocol to which the external access rule applies.
  late final pulumi.Output<String> ipProtocol;

  /// The ID of the external access rule.
  late final pulumi.Output<String> name;

  /// The resource name of the network policy.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy
  late final pulumi.Output<String> parent;

  /// External access rule priority, which determines the external access rule to use when multiple rules apply.
  late final pulumi.Output<int> priority;

  /// If source ranges are specified, the external access rule applies only to
  /// traffic that has a source IP address in these ranges.
  /// Structure is documented below.
  late final pulumi.Output<List<ExternalAccessRuleSourceIpRange>>
      sourceIpRanges;

  /// A list of source ports to which the external access rule applies.
  late final pulumi.Output<List<String>> sourcePorts;

  /// State of the Cluster.
  late final pulumi.Output<String> state;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  ExternalAccessRule(
    String name, {
    ExternalAccessRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/externalAccessRule:ExternalAccessRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.destinationIpRanges =
        registerOutput<List<ExternalAccessRuleDestinationIpRange>>(
            'destinationIpRanges');
    this.destinationPorts = registerOutput<List<String>>('destinationPorts');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.priority = registerOutput<int>('priority');
    this.sourceIpRanges =
        registerOutput<List<ExternalAccessRuleSourceIpRange>>('sourceIpRanges');
    this.sourcePorts = registerOutput<List<String>>('sourcePorts');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
