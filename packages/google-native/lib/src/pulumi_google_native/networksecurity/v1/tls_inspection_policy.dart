import 'package:pulumi/pulumi.dart';
import 'tls_inspection_policy_args.dart';

/// Creates a new TlsInspectionPolicy in a given project and location.
class TlsInspectionPolicy extends CustomResource {
  /// A CA pool resource used to issue interception certificates. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  late final Output<String> caPool;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. List of custom TLS cipher suites selected. This field is valid only if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  late final Output<List<String>> customTlsFeatures;

  /// Optional. Free-text description of the resource.
  late final Output<String> description;

  /// Optional. If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trust_config. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trust_config will be accepted. This defaults to FALSE (use public CAs in addition to trust_config) for backwards compatibility, but trusting public root CAs is *not recommended* unless the traffic in question is outbound to public web servers. When possible, prefer setting this to "false" and explicitly specifying trusted CAs and certificates in a TrustConfig. Note that Secure Web Proxy does not yet honor this field.
  late final Output<bool> excludePublicCaSet;
  late final Output<String> location;

  /// Optional. Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  late final Output<String> minTlsVersion;

  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy} tls_inspection_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers ("PROFILE_COMPATIBLE"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  late final Output<String> tlsFeatureProfile;

  /// Required. Short name of the TlsInspectionPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "tls_inspection_policy1".
  late final Output<String> tlsInspectionPolicyId;

  /// Optional. A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form "projects/{project}/locations/{location}/trustConfigs/{trust_config}". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Note that Secure Web Proxy does not yet honor this field.
  late final Output<String> trustConfig;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  TlsInspectionPolicy(
    String name, {
    TlsInspectionPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1:TlsInspectionPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.caPool = registerOutput<String>('caPool');
    this.createTime = registerOutput<String>('createTime');
    this.customTlsFeatures = registerOutput<List<String>>('customTlsFeatures');
    this.description = registerOutput<String>('description');
    this.excludePublicCaSet = registerOutput<bool>('excludePublicCaSet');
    this.location = registerOutput<String>('location');
    this.minTlsVersion = registerOutput<String>('minTlsVersion');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tlsFeatureProfile = registerOutput<String>('tlsFeatureProfile');
    this.tlsInspectionPolicyId =
        registerOutput<String>('tlsInspectionPolicyId');
    this.trustConfig = registerOutput<String>('trustConfig');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
