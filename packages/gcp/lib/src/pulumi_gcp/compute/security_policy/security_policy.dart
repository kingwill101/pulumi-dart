import 'package:pulumi/pulumi.dart';
import '../security_policy_adaptive_protection_config/security_policy_adaptive_protection_config.dart';
import '../security_policy_advanced_options_config/security_policy_advanced_options_config.dart';
import '../security_policy_recaptcha_options_config/security_policy_recaptcha_options_config.dart';
import '../security_policy_rule/security_policy_rule.dart';
import 'security_policy_args.dart';

/// A Security Policy defines an IP blacklist or whitelist that protects load balanced Google Cloud services by denying or permitting traffic from specified IP ranges. For more information
/// see the [official documentation](https://cloud.google.com/armor/docs/configure-security-policies)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/beta/securityPolicies).
///
/// Security Policy is used by google_compute_backend_service.
///
/// ## Example Usage
///
///
///
/// ### With ReCAPTCHA Configuration Options
///
///
///
/// ### With Header Actions
///
///
///
/// ### With EnforceOnKey Value As Empty String
/// A scenario example that won't cause any conflict between `enforce_on_key` and `enforce_on_key_configs`, because `enforce_on_key` was specified as an empty string:
///
///
///
/// ## Import
///
/// Security policies can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/securityPolicies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, security policies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicy:SecurityPolicy default projects/{{project}}/global/securityPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicy:SecurityPolicy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicy:SecurityPolicy default {{name}}
/// ```
class SecurityPolicy extends CustomResource {
  /// Configuration for [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  late final Output<SecurityPolicyAdaptiveProtectionConfig?>
      adaptiveProtectionConfig;

  /// [Advanced Configuration Options](https://cloud.google.com/armor/docs/security-policy-overview#json-parsing).
  /// Structure is documented below.
  late final Output<SecurityPolicyAdvancedOptionsConfig> advancedOptionsConfig;

  /// An optional description of this security policy. Max size is 2048.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Fingerprint of this resource.
  late final Output<String> fingerprint;

  /// The unique fingerprint of the labels.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this address. A list of key->value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name of the security policy.
  ///
  /// - - -
  late final Output<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// [reCAPTCHA Configuration Options](https://cloud.google.com/armor/docs/configure-security-policies?hl=en#use_a_manual_challenge_to_distinguish_between_human_or_automated_clients). Structure is documented below.
  late final Output<SecurityPolicyRecaptchaOptionsConfig?>
      recaptchaOptionsConfig;

  /// The set of rules that belong to this policy. There must always be a default
  /// rule (rule with priority 2147483647 and match "\*"). If no rules are provided when creating a
  /// security policy, a default rule with action "allow" will be added. Structure is documented below.
  late final Output<List<SecurityPolicyRule>> rules;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// * `CLOUD_ARMOR` - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services.
  /// They filter requests before they hit the origin servers.
  /// * `CLOUD_ARMOR_EDGE` - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services
  /// (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage).
  /// They filter requests before the request is served from Google's cache.
  /// * `CLOUD_ARMOR_INTERNAL_SERVICE` - Cloud Armor internal service policies can be configured to filter HTTP requests targeting services
  /// managed by Traffic Director in a service mesh. They filter requests before the request is served from the application.
  late final Output<String> type;

  SecurityPolicy(
    String name, {
    SecurityPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityPolicy:SecurityPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adaptiveProtectionConfig =
        registerOutput<SecurityPolicyAdaptiveProtectionConfig?>(
            'adaptiveProtectionConfig');
    this.advancedOptionsConfig =
        registerOutput<SecurityPolicyAdvancedOptionsConfig>(
            'advancedOptionsConfig');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.recaptchaOptionsConfig =
        registerOutput<SecurityPolicyRecaptchaOptionsConfig?>(
            'recaptchaOptionsConfig');
    this.rules = registerOutput<List<SecurityPolicyRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.type = registerOutput<String>('type');
  }
}
