import 'package:pulumi/pulumi.dart' as pulumi;
import '../deny_policy_rule/deny_policy_rule.dart';
import 'deny_policy_args.dart';

/// Represents a collection of denial policies to apply to a given resource.
///
///
/// To get more information about DenyPolicy, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v2/policies)
/// * How-to Guides
/// * [Permissions supported in deny policies](https://cloud.google.com/iam/docs/deny-permissions-support)
///
/// ## Example Usage
///
/// ### Iam Deny Policy Basic
///
///
///
///
/// ## Import
///
/// DenyPolicy can be imported using any of these accepted formats:
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, DenyPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/denyPolicy:DenyPolicy default {{parent}}/{{name}}
/// ```
class DenyPolicy extends pulumi.CustomResource {
  /// The display name of the rule.
  late final pulumi.Output<String?> displayName;

  /// The hash of the resource. Used internally during updates.
  late final pulumi.Output<String> etag;

  /// The name of the policy.
  late final pulumi.Output<String> name;

  /// The attachment point is identified by its URL-encoded full resource name.
  late final pulumi.Output<String> parent;

  /// Rules to be applied.
  /// Structure is documented below.
  late final pulumi.Output<List<DenyPolicyRule>> rules;

  DenyPolicy(
    String name, {
    DenyPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/denyPolicy:DenyPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.rules = registerOutput<List<DenyPolicyRule>>('rules');
  }
}
