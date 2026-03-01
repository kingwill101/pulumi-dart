// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_tls_inspection_policy_tls_inspection_policy_args_doc}
/// The set of arguments for TlsInspectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_tls_inspection_policy_tls_inspection_policy_args_doc}
class TlsInspectionPolicyArgs {
  /// A CA pool resource used to issue interception certificates.
  final pulumi.Input<String> caPool;

  /// List of custom TLS cipher suites selected. This field is valid only if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  final pulumi.Input<List<String>>? customTlsFeatures;

  /// Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trustConfig. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trustConfig will be accepted.
  final pulumi.Input<bool>? excludePublicCaSet;

  /// The location of the tls inspection policy.
  final pulumi.Input<String>? location;

  /// Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// Default value is `TLS_VERSION_UNSPECIFIED`.
  /// Possible values are: `TLS_VERSION_UNSPECIFIED`, `TLS_1_0`, `TLS_1_1`, `TLS_1_2`, `TLS_1_3`.
  final pulumi.Input<String>? minTlsVersion;

  /// Short name of the TlsInspectionPolicy resource to be created.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers (\"PROFILE_COMPATIBLE\"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// Default value is `PROFILE_UNSPECIFIED`.
  /// Possible values are: `PROFILE_UNSPECIFIED`, `PROFILE_COMPATIBLE`, `PROFILE_MODERN`, `PROFILE_RESTRICTED`, `PROFILE_CUSTOM`.
  final pulumi.Input<String>? tlsFeatureProfile;

  /// A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form \"projects/{project}/locations/{location}/trustConfigs/{trust_config}\". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Trust config and the TLS inspection policy must be in the same region. Note that Secure Web Proxy does not yet honor this field.
  final pulumi.Input<String>? trustConfig;

  /// Creates a new [TlsInspectionPolicyArgs].
  /// [caPool] A CA pool resource used to issue interception certificates.
  /// [customTlsFeatures] List of custom TLS cipher suites selected. This field is valid only if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  /// [description] Free-text description of the resource.
  /// [excludePublicCaSet] If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trustConfig. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trustConfig will be accepted.
  /// [location] The location of the tls inspection policy.
  /// [minTlsVersion] Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// [name] Short name of the TlsInspectionPolicy resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [tlsFeatureProfile] The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers (\"PROFILE_COMPATIBLE\"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  /// [trustConfig] A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form \"projects/{project}/locations/{location}/trustConfigs/{trust_config}\". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Trust config and the TLS inspection policy must be in the same region. Note that Secure Web Proxy does not yet honor this field.
  TlsInspectionPolicyArgs({
    required String caPool,
    List<String>? customTlsFeatures,
    String? description,
    bool? excludePublicCaSet,
    String? location,
    String? minTlsVersion,
    String? name,
    String? project,
    String? tlsFeatureProfile,
    String? trustConfig,
  }) : caPool = pulumi.Input.asInput<String>(caPool),
       customTlsFeatures = pulumi.Input.asOptionalInput<List<String>>(
         customTlsFeatures,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       excludePublicCaSet = pulumi.Input.asOptionalInput<bool>(
         excludePublicCaSet,
       ),
       location = pulumi.Input.asOptionalInput<String>(location),
       minTlsVersion = pulumi.Input.asOptionalInput<String>(minTlsVersion),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       tlsFeatureProfile = pulumi.Input.asOptionalInput<String>(
         tlsFeatureProfile,
       ),
       trustConfig = pulumi.Input.asOptionalInput<String>(trustConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPool': caPool,
      'customTlsFeatures': ?customTlsFeatures,
      'description': ?description,
      'excludePublicCaSet': ?excludePublicCaSet,
      'location': ?location,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
      'project': ?project,
      'tlsFeatureProfile': ?tlsFeatureProfile,
      'trustConfig': ?trustConfig,
    };
  }

  factory TlsInspectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TlsInspectionPolicyArgs(
      caPool: map['caPool'] as String,
      customTlsFeatures: map['customTlsFeatures'] == null
          ? null
          : (map['customTlsFeatures'] as List).cast<String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      excludePublicCaSet: map['excludePublicCaSet'] == null
          ? null
          : map['excludePublicCaSet'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      minTlsVersion: map['minTlsVersion'] == null
          ? null
          : map['minTlsVersion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tlsFeatureProfile: map['tlsFeatureProfile'] == null
          ? null
          : map['tlsFeatureProfile'] as String,
      trustConfig: map['trustConfig'] == null
          ? null
          : map['trustConfig'] as String,
    );
  }
}
