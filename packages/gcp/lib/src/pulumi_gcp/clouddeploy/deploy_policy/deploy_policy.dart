import 'package:pulumi/pulumi.dart' as pulumi;
import '../deploy_policy_rule/deploy_policy_rule.dart';
import '../deploy_policy_selector/deploy_policy_selector.dart';
import 'deploy_policy_args.dart';

/// A `DeployPolicy` inhibits manual or DeployPolicy-driven actions within a Delivery Pipeline or Target.
///
///
/// To get more information about DeployPolicy, see:
///
/// * [API documentation](https://cloud.google.com/deploy/docs/api/reference/rest/v1/projects.locations.deployPolicies)
/// * How-to Guides
/// * [Restrict deploy behavior using policies](https://cloud.google.com/deploy/docs/deploy-policy)
///
/// ## Example Usage
///
/// ### Clouddeploy Deploy Policy Basic
///
///
///
/// ### Clouddeploy Deploy Policy Full
///
///
///
///
/// ## Import
///
/// DeployPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/deployPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, DeployPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deployPolicy:DeployPolicy default projects/{{project}}/locations/{{location}}/deployPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deployPolicy:DeployPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/deployPolicy:DeployPolicy default {{location}}/{{name}}
/// ```
class DeployPolicy extends pulumi.CustomResource {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Output only. Time at which the DeployPolicy was created.
  late final pulumi.Output<String> createTime;

  /// Description of the `DeployPolicy`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The weak etag of the `DeployPolicy` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Name of the `DeployPolicy`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Rules to apply. At least one rule must be present.
  /// Structure is documented below.
  late final pulumi.Output<List<DeployPolicyRule>> rules;

  /// Selected resources to which the policy will be applied. At least one selector is required. If one selector matches the resource the policy applies. For example, if there are two selectors and the action being attempted matches one of them, the policy will apply to that action.
  /// Structure is documented below.
  late final pulumi.Output<List<DeployPolicySelector>> selectors;

  /// When suspended, the policy will not prevent actions from occurring, even if the action violates the policy.
  late final pulumi.Output<bool?> suspended;

  /// Output only. Unique identifier of the `DeployPolicy`.
  late final pulumi.Output<String> uid;

  /// Output only. Time at which the DeployPolicy was updated.
  late final pulumi.Output<String> updateTime;

  DeployPolicy(
    String name, {
    DeployPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/deployPolicy:DeployPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rules = registerOutput<List<DeployPolicyRule>>('rules');
    this.selectors = registerOutput<List<DeployPolicySelector>>('selectors');
    this.suspended = registerOutput<bool?>('suspended');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
