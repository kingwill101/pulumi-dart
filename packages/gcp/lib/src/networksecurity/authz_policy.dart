import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_args.dart';
import 'authz_policy_custom_provider.dart';
import 'authz_policy_http_rule.dart';
import 'authz_policy_target.dart';

/// AuthzPolicy is a resource that allows to forward traffic to a callout backend designed to scan the traffic for security purposes.
///
///
/// To get more information about AuthzPolicy, see:
///
/// * [API documentation](https://cloud.google.com/load-balancing/docs/reference/network-security/rest/v1beta1/projects.locations.authzPolicies)
///
/// ## Example Usage
///
/// ## Import
///
/// AuthzPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/authzPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AuthzPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authzPolicy:AuthzPolicy default projects/{{project}}/locations/{{location}}/authzPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authzPolicy:AuthzPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authzPolicy:AuthzPolicy default {{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authzPolicy:AuthzPolicy default {{name}}
/// ```
class AuthzPolicy extends pulumi.CustomResource {
  /// When the action is CUSTOM, customProvider must be specified.
  /// When the action is ALLOW, only requests matching the policy will be allowed.
  /// When the action is DENY, only requests matching the policy will be denied.
  /// When a request arrives, the policies are evaluated in the following order:
  /// 1. If there is a CUSTOM policy that matches the request, the CUSTOM policy is evaluated using the custom authorization providers and the request is denied if the provider rejects the request.
  /// 2. If there are any DENY policies that match the request, the request is denied.
  /// 3. If there are no ALLOW policies for the resource or if any of the ALLOW policies match the request, the request is allowed.
  /// 4. Else the request is denied by default if none of the configured AuthzPolicies with ALLOW action match the request.
  /// Possible values are: `ALLOW`, `DENY`, `CUSTOM`.
  late final pulumi.Output<String> action;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Required if the action is CUSTOM. Allows delegating authorization decisions to Cloud IAP or to Service Extensions. One of cloudIap or authzExtension must be specified.
  /// Structure is documented below.
  late final pulumi.Output<AuthzPolicyCustomProvider?> customProvider;

  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// Limited to 5 rules.
  /// Structure is documented below.
  late final pulumi.Output<List<AuthzPolicyHttpRule>?> httpRules;

  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// Identifier. Name of the AuthzPolicy resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Specifies the set of resources to which this policy should be applied to.
  /// Structure is documented below.
  late final pulumi.Output<AuthzPolicyTarget> target;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AuthzPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthzPolicy]. {@macro pulumi_networksecurity_authz_policy_authz_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthzPolicy(
    String name, {
    AuthzPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networksecurity/authzPolicy:AuthzPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.action = registerOutput<String>('action');
    this.createTime = registerOutput<String>('createTime');
    this.customProvider = registerOutput<AuthzPolicyCustomProvider?>(
      'customProvider',
    );
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.httpRules = registerOutput<List<AuthzPolicyHttpRule>?>('httpRules');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.target = registerOutput<AuthzPolicyTarget>('target');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
