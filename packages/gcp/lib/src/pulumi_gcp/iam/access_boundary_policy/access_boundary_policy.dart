import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_boundary_policy_rule/access_boundary_policy_rule.dart';
import 'access_boundary_policy_args.dart';

/// Represents a collection of access boundary policies to apply to a given resource.
/// **NOTE**: This is a private feature and users should contact GCP support
/// if they would like to test it.
///
///
///
/// ## Example Usage
///
/// ### Iam Access Boundary Policy Basic
///
///
///
///
/// ## Import
///
/// AccessBoundaryPolicy can be imported using any of these accepted formats:
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, AccessBoundaryPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/accessBoundaryPolicy:AccessBoundaryPolicy default {{parent}}/{{name}}
/// ```
class AccessBoundaryPolicy extends pulumi.CustomResource {
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
  late final pulumi.Output<List<AccessBoundaryPolicyRule>> rules;

  AccessBoundaryPolicy(
    String name, {
    AccessBoundaryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/accessBoundaryPolicy:AccessBoundaryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.rules = registerOutput<List<AccessBoundaryPolicyRule>>('rules');
  }
}
