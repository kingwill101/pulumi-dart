import 'package:pulumi/pulumi.dart' as pulumi;
import '../organizations_policy_binding_condition/organizations_policy_binding_condition.dart';
import '../organizations_policy_binding_target/organizations_policy_binding_target.dart';
import 'organizations_policy_binding_args.dart';

/// ## Example Usage
///
/// ### Iam Organizations Policy Binding
///
///
///
///
/// ## Import
///
/// OrganizationsPolicyBinding can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/policyBindings/{{policy_binding_id}}`
///
/// * `{{organization}}/{{location}}/{{policy_binding_id}}`
///
/// When using the `pulumi import` command, OrganizationsPolicyBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/organizationsPolicyBinding:OrganizationsPolicyBinding default organizations/{{organization}}/locations/{{location}}/policyBindings/{{policy_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/organizationsPolicyBinding:OrganizationsPolicyBinding default {{organization}}/{{location}}/{{policy_binding_id}}
/// ```
class OrganizationsPolicyBinding extends pulumi.CustomResource {
  /// Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Represents a textual expression in the Common Expression Language
  /// (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of
  /// CEL are documented at https://github.com/google/cel-spec.
  /// Example (Comparison):
  /// title: \"Summary size limit\"
  /// description: \"Determines if a summary is less than 100 chars\"
  /// expression: \"document.summary.size() < 100\"
  /// Example
  /// (Equality):
  /// title: \"Requestor is owner\"
  /// description: \"Determines if requestor is the document owner\"
  /// expression: \"document.owner == request.auth.claims.email\"  Example
  /// (Logic):
  /// title: \"Public documents\"
  /// description: \"Determine whether the document should be publicly visible\"
  /// expression: \"document.type != 'private' && document.type != 'internal'\"
  /// Example (Data Manipulation):
  /// title: \"Notification string\"
  /// description: \"Create a notification string with a timestamp.\"
  /// expression: \"'New message received at ' + string(document.create_time)\"
  /// The exact variables and functions that may be referenced within an expression are
  /// determined by the service that evaluates it. See the service documentation for
  /// additional information.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationsPolicyBindingCondition?> condition;

  /// Output only. The time when the policy binding was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// Optional. The etag for the policy binding. If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;

  /// The location of the Policy Binding
  late final pulumi.Output<String> location;

  /// The name of the policy binding in the format `{binding_parent/locations/{location}/policyBindings/{policy_binding_id}`
  late final pulumi.Output<String> name;

  /// The parent organization of the Policy Binding.
  late final pulumi.Output<String> organization;

  /// Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  late final pulumi.Output<String> policy;

  /// The Policy Binding ID.
  late final pulumi.Output<String> policyBindingId;

  /// Immutable. The kind of the policy to attach in this binding. This
  /// field must be one of the following:  - Left empty (will be automatically set
  /// to the policy kind) - The input policy kind   Possible values:  POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
  late final pulumi.Output<String?> policyKind;

  /// Output only. The globally unique ID of the policy to be bound.
  late final pulumi.Output<String> policyUid;

  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationsPolicyBindingTarget> target;

  /// Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  late final pulumi.Output<String> uid;

  /// Output only. The time when the policy binding was most recently updated.
  late final pulumi.Output<String> updateTime;

  OrganizationsPolicyBinding(
    String name, {
    OrganizationsPolicyBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/organizationsPolicyBinding:OrganizationsPolicyBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.condition =
        registerOutput<OrganizationsPolicyBindingCondition?>('condition');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.policy = registerOutput<String>('policy');
    this.policyBindingId = registerOutput<String>('policyBindingId');
    this.policyKind = registerOutput<String?>('policyKind');
    this.policyUid = registerOutput<String>('policyUid');
    this.target = registerOutput<OrganizationsPolicyBindingTarget>('target');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
