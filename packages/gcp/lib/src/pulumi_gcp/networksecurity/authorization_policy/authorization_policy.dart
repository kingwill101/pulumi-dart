import 'package:pulumi/pulumi.dart' as pulumi;
import '../authorization_policy_rule/authorization_policy_rule.dart';
import 'authorization_policy_args.dart';

/// AuthorizationPolicy is a resource that specifies how a server should authorize incoming connections. This resource in itself does not change the configuration unless it's attached to a target https proxy or endpoint config selector resource.
///
/// To get more information about AuthorizationPolicy, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-security/rest/v1beta1/projects.locations.authorizationPolicies)
///
/// ## Example Usage
///
/// ### Network Security Authorization Policy Basic
///
///
///
/// ### Network Security Authorization Policy Destinations
///
///
///
///
/// ## Import
///
/// AuthorizationPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/authorizationPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, AuthorizationPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authorizationPolicy:AuthorizationPolicy default projects/{{project}}/locations/{{location}}/authorizationPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authorizationPolicy:AuthorizationPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authorizationPolicy:AuthorizationPolicy default {{location}}/{{name}}
/// ```
class AuthorizationPolicy extends pulumi.CustomResource {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// Possible values are: `ALLOW`, `DENY`.
  late final pulumi.Output<String> action;

  /// Time the AuthorizationPolicy was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the AuthorizationPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the authorization policy.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// Name of the AuthorizationPolicy resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken.
  /// A rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request.
  /// Structure is documented below.
  late final pulumi.Output<List<AuthorizationPolicyRule>?> rules;

  /// Time the AuthorizationPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  AuthorizationPolicy(
    String name, {
    AuthorizationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/authorizationPolicy:AuthorizationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rules = registerOutput<List<AuthorizationPolicyRule>?>('rules');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
