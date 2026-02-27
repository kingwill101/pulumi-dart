import 'package:pulumi/pulumi.dart';
import '../region_security_policy_advanced_options_config/region_security_policy_advanced_options_config.dart';
import '../region_security_policy_ddos_protection_config/region_security_policy_ddos_protection_config.dart';
import '../region_security_policy_rule/region_security_policy_rule.dart';
import '../region_security_policy_user_defined_field/region_security_policy_user_defined_field.dart';
import 'region_security_policy_args.dart';

/// Represents a Region Cloud Armor Security Policy resource.
///
///
/// To get more information about RegionSecurityPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/armor/docs/security-policy-concepts)
///
/// ## Example Usage
///
/// ### Region Security Policy Basic
///
///
///
/// ### Region Security Policy With Ddos Protection Config
///
///
///
/// ### Region Security Policy With User Defined Fields
///
///
///
/// ### Region Security Policy With Rules
///
///
///
///
/// ## Import
///
/// RegionSecurityPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/securityPolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionSecurityPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default projects/{{project}}/regions/{{region}}/securityPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default {{name}}
/// ```
class RegionSecurityPolicy extends CustomResource {
  /// Advanced Options Config of this security policy.
  /// Structure is documented below.
  late final Output<RegionSecurityPolicyAdvancedOptionsConfig?>
      advancedOptionsConfig;

  /// Configuration for Google Cloud Armor DDOS Proctection Config.
  /// Structure is documented below.
  late final Output<RegionSecurityPolicyDdosProtectionConfig?>
      ddosProtectionConfig;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  late final Output<String> fingerprint;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final Output<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Region in which the created Region Security Policy should reside.
  /// If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  /// Structure is documented below.
  late final Output<List<RegionSecurityPolicyRule>> rules;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithPolicyId;

  /// The type indicates the intended use of the security policy.
  /// - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers.
  /// - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache.
  /// - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application.
  /// This field can be set only at resource creation time.
  /// Possible values are: `CLOUD_ARMOR`, `CLOUD_ARMOR_EDGE`, `CLOUD_ARMOR_NETWORK`.
  late final Output<String?> type;

  /// Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies.
  /// A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits.
  /// Rules may then specify matching values for these fields.
  /// Structure is documented below.
  late final Output<List<RegionSecurityPolicyUserDefinedField>?>
      userDefinedFields;

  RegionSecurityPolicy(
    String name, {
    RegionSecurityPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionSecurityPolicy:RegionSecurityPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedOptionsConfig =
        registerOutput<RegionSecurityPolicyAdvancedOptionsConfig?>(
            'advancedOptionsConfig');
    this.ddosProtectionConfig =
        registerOutput<RegionSecurityPolicyDdosProtectionConfig?>(
            'ddosProtectionConfig');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<RegionSecurityPolicyRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithPolicyId = registerOutput<String>('selfLinkWithPolicyId');
    this.type = registerOutput<String?>('type');
    this.userDefinedFields =
        registerOutput<List<RegionSecurityPolicyUserDefinedField>?>(
            'userDefinedFields');
  }
}
