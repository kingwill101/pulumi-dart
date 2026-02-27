import 'package:pulumi/pulumi.dart';
import '../projects_policy_binding_condition/projects_policy_binding_condition.dart';
import '../projects_policy_binding_target/projects_policy_binding_target.dart';
import 'projects_policy_binding_args.dart';

/// ## Example Usage
///
/// ### Iam Projects Policy Binding
///
///
///
///
/// ## Import
///
/// ProjectsPolicyBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/policyBindings/{{policy_binding_id}}`
///
/// * `{{project}}/{{location}}/{{policy_binding_id}}`
///
/// * `{{location}}/{{policy_binding_id}}`
///
/// When using the `pulumi import` command, ProjectsPolicyBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding default projects/{{project}}/locations/{{location}}/policyBindings/{{policy_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding default {{project}}/{{location}}/{{policy_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding default {{location}}/{{policy_binding_id}}
/// ```
class ProjectsPolicyBinding extends CustomResource {
  /// Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

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
  late final Output<ProjectsPolicyBindingCondition?> condition;

  /// Output only. The time when the policy binding was created.
  late final Output<String> createTime;

  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// Optional. The etag for the policy binding. If this is provided on update, it must match the server's etag.
  late final Output<String> etag;

  /// The location of the Policy Binding
  late final Output<String> location;

  /// The name of the policy binding in the format `{binding_parent/locations/{location}/policyBindings/{policy_binding_id}`
  late final Output<String> name;

  /// Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  late final Output<String> policy;

  /// The Policy Binding ID.
  late final Output<String> policyBindingId;

  /// Immutable. The kind of the policy to attach in this binding. This
  /// field must be one of the following:  - Left empty (will be automatically set
  /// to the policy kind) - The input policy kind   Possible values:  POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
  late final Output<String?> policyKind;

  /// Output only. The globally unique ID of the policy to be bound.
  late final Output<String> policyUid;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Structure is documented below.
  late final Output<ProjectsPolicyBindingTarget> target;

  /// Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  late final Output<String> uid;

  /// Output only. The time when the policy binding was most recently updated.
  late final Output<String> updateTime;

  ProjectsPolicyBinding(
    String name, {
    ProjectsPolicyBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.condition =
        registerOutput<ProjectsPolicyBindingCondition?>('condition');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.policyBindingId = registerOutput<String>('policyBindingId');
    this.policyKind = registerOutput<String?>('policyKind');
    this.policyUid = registerOutput<String>('policyUid');
    this.project = registerOutput<String>('project');
    this.target = registerOutput<ProjectsPolicyBindingTarget>('target');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
