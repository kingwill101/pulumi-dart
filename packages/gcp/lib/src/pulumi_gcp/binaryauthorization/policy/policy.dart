import 'package:pulumi/pulumi.dart';
import '../policy_admission_whitelist_pattern/policy_admission_whitelist_pattern.dart';
import '../policy_cluster_admission_rule/policy_cluster_admission_rule.dart';
import '../policy_default_admission_rule/policy_default_admission_rule.dart';
import 'policy_args.dart';

/// A policy for container image binary authorization.
///
///
/// To get more information about Policy, see:
///
/// * [API documentation](https://cloud.google.com/binary-authorization/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/binary-authorization/)
///
/// ## Example Usage
///
/// ### Binary Authorization Policy Basic
///
///
///
/// ### Binary Authorization Policy Global Evaluation
///
///
///
///
/// ## Import
///
/// Policy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Policy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:binaryauthorization/policy:Policy default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:binaryauthorization/policy:Policy default {{project}}
/// ```
class Policy extends CustomResource {
  /// A whitelist of image patterns to exclude from admission rules. If an
  /// image's name matches a whitelist pattern, the image's admission
  /// requests will always be permitted regardless of your admission rules.
  /// Structure is documented below.
  late final Output<List<PolicyAdmissionWhitelistPattern>?>
      admissionWhitelistPatterns;

  /// Per-cluster admission rules. An admission rule specifies either that
  /// all container images used in a pod creation request must be attested
  /// to by one or more attestors, that all pod creations will be allowed,
  /// or that all pod creations will be denied. There can be at most one
  /// admission rule per cluster spec.
  ///
  /// Identifier format: `{{location}}.{{clusterId}}`.
  /// A location is either a compute zone (e.g. `us-central1-a`) or a region
  /// (e.g. `us-central1`).
  /// Structure is documented below.
  late final Output<List<PolicyClusterAdmissionRule>?> clusterAdmissionRules;

  /// Default admission rule for a cluster without a per-cluster admission
  /// rule.
  /// Structure is documented below.
  late final Output<PolicyDefaultAdmissionRule> defaultAdmissionRule;

  /// A descriptive comment.
  late final Output<String?> description;

  /// Controls the evaluation of a Google-maintained global admission policy
  /// for common system-level images. Images not covered by the global
  /// policy will be subject to the project admission policy.
  /// Possible values are: `ENABLE`, `DISABLE`.
  late final Output<String> globalPolicyEvaluationMode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  Policy(
    String name, {
    PolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:binaryauthorization/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.admissionWhitelistPatterns =
        registerOutput<List<PolicyAdmissionWhitelistPattern>?>(
            'admissionWhitelistPatterns');
    this.clusterAdmissionRules =
        registerOutput<List<PolicyClusterAdmissionRule>?>(
            'clusterAdmissionRules');
    this.defaultAdmissionRule =
        registerOutput<PolicyDefaultAdmissionRule>('defaultAdmissionRule');
    this.description = registerOutput<String?>('description');
    this.globalPolicyEvaluationMode =
        registerOutput<String>('globalPolicyEvaluationMode');
    this.project = registerOutput<String>('project');
  }
}
