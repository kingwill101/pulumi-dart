import 'package:pulumi/pulumi.dart';
import 'tls_inspection_policy_args.dart';

/// The TlsInspectionPolicy resource contains references to CA pools in Certificate Authority Service and associated metadata.
///
///
/// To get more information about TlsInspectionPolicy, see:
///
/// * [API documentation](https://cloud.google.com/secure-web-proxy/docs/reference/network-security/rest/v1/projects.locations.tlsInspectionPolicies)
/// * How-to Guides
/// * [Use TlsInspectionPolicy](https://cloud.google.com/secure-web-proxy/docs/tls-inspection-overview)
///
/// ## Example Usage
///
/// ### Network Security Tls Inspection Policy Basic
///
///
///
/// ### Network Security Tls Inspection Policy Custom
///
///
///
///
/// ## Import
///
/// TlsInspectionPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/tlsInspectionPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, TlsInspectionPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy default projects/{{project}}/locations/{{location}}/tlsInspectionPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy default {{location}}/{{name}}
/// ```
class TlsInspectionPolicy extends CustomResource {
  /// A CA pool resource used to issue interception certificates.
  late final Output<String> caPool;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// List of custom TLS cipher suites selected. This field is valid only if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  late final Output<List<String>?> customTlsFeatures;

  /// Free-text description of the resource.
  late final Output<String?> description;

  /// If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trustConfig. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trustConfig will be accepted.
  late final Output<bool?> excludePublicCaSet;

  /// The location of the tls inspection policy.
  late final Output<String?> location;

  /// Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// Default value is `TLS_VERSION_UNSPECIFIED`.
  /// Possible values are: `TLS_VERSION_UNSPECIFIED`, `TLS_1_0`, `TLS_1_1`, `TLS_1_2`, `TLS_1_3`.
  late final Output<String?> minTlsVersion;

  /// Short name of the TlsInspectionPolicy resource to be created.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers (\"PROFILE_COMPATIBLE\"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// Default value is `PROFILE_UNSPECIFIED`.
  /// Possible values are: `PROFILE_UNSPECIFIED`, `PROFILE_COMPATIBLE`, `PROFILE_MODERN`, `PROFILE_RESTRICTED`, `PROFILE_CUSTOM`.
  late final Output<String?> tlsFeatureProfile;

  /// A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form \"projects/{project}/locations/{location}/trustConfigs/{trust_config}\". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Trust config and the TLS inspection policy must be in the same region. Note that Secure Web Proxy does not yet honor this field.
  late final Output<String?> trustConfig;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  TlsInspectionPolicy(
    String name, {
    TlsInspectionPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/tlsInspectionPolicy:TlsInspectionPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.caPool = registerOutput<String>('caPool');
    this.createTime = registerOutput<String>('createTime');
    this.customTlsFeatures = registerOutput<List<String>?>('customTlsFeatures');
    this.description = registerOutput<String?>('description');
    this.excludePublicCaSet = registerOutput<bool?>('excludePublicCaSet');
    this.location = registerOutput<String?>('location');
    this.minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tlsFeatureProfile = registerOutput<String?>('tlsFeatureProfile');
    this.trustConfig = registerOutput<String?>('trustConfig');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
