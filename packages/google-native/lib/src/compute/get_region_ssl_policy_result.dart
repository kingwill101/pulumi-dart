// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_policy_warnings_item_response.dart';
import 'server_tls_settings_response.dart';

/// Result data returned by getRegionSslPolicy.
class GetRegionSslPolicyResult {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  final List<String> customFeatures;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// The list of features enabled in the SSL policy.
  final List<String> enabledFeatures;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a SslPolicy. An up-to-date fingerprint must be provided in order to update the SslPolicy, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an SslPolicy.
  final String fingerprint;

  /// [Output only] Type of the resource. Always compute#sslPolicyfor SSL policies.
  final String kind;

  /// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  final String minTlsVersion;

  /// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  final String profile;

  /// URL of the region where the regional SSL policy resides. This field is not applicable to global SSL policies.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  /// Security settings for the proxy. This field is only applicable to a global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final ServerTlsSettingsResponse tlsSettings;

  /// If potential misconfigurations are detected for this SSL policy, this field will be populated with warning messages.
  final List<RegionSslPolicyWarningsItemResponse> warnings;

  /// Creates a new [GetRegionSslPolicyResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [customFeatures] A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [enabledFeatures] The list of features enabled in the SSL policy.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a SslPolicy. An up-to-date fingerprint must be provided in order to update the SslPolicy, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an SslPolicy.
  /// [kind] [Output only] Type of the resource. Always compute#sslPolicyfor SSL policies.
  /// [minTlsVersion] The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  /// [name] Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [profile] Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  /// [region] URL of the region where the regional SSL policy resides. This field is not applicable to global SSL policies.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [tlsSettings] Security settings for the proxy. This field is only applicable to a global backend service with the loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// [warnings] If potential misconfigurations are detected for this SSL policy, this field will be populated with warning messages.
  GetRegionSslPolicyResult({
    required this.creationTimestamp,
    required this.customFeatures,
    required this.description,
    required this.enabledFeatures,
    required this.fingerprint,
    required this.kind,
    required this.minTlsVersion,
    required this.name,
    required this.profile,
    required this.region,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.tlsSettings,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTimestamp'] = creationTimestamp;
    map['customFeatures'] = customFeatures;
    map['description'] = description;
    map['enabledFeatures'] = enabledFeatures;
    map['fingerprint'] = fingerprint;
    map['kind'] = kind;
    map['minTlsVersion'] = minTlsVersion;
    map['name'] = name;
    map['profile'] = profile;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['tlsSettings'] = tlsSettings.toMap();
    map['warnings'] = pulumi.Input.encodeList<
        RegionSslPolicyWarningsItemResponse,
        Map<String, dynamic>>(warnings, (value) => value.toMap());
    return map;
  }

  factory GetRegionSslPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionSslPolicyResult(
      creationTimestamp: map['creationTimestamp'] as String,
      customFeatures: (map['customFeatures'] as List).cast<String>(),
      description: map['description'] as String,
      enabledFeatures: (map['enabledFeatures'] as List).cast<String>(),
      fingerprint: map['fingerprint'] as String,
      kind: map['kind'] as String,
      minTlsVersion: map['minTlsVersion'] as String,
      name: map['name'] as String,
      profile: map['profile'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      tlsSettings: ServerTlsSettingsResponse.fromMap(
          (map['tlsSettings'] as Map).cast<String, dynamic>()),
      warnings: pulumi.Input.decodeList<RegionSslPolicyWarningsItemResponse>(
          map['warnings'],
          (value) => RegionSslPolicyWarningsItemResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
