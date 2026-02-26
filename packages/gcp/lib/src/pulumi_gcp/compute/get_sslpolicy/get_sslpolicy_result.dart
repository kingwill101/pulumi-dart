// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSSLPolicy.
class GetSSLPolicyResult {
  final String creationTimestamp;

  /// If the <span pulumi-lang-nodejs="`profile`" pulumi-lang-dotnet="`Profile`" pulumi-lang-go="`profile`" pulumi-lang-python="`profile`" pulumi-lang-yaml="`profile`" pulumi-lang-java="`profile`">`profile`</span> is `CUSTOM`, these are the custom encryption
  /// ciphers supported by the profile. If the <span pulumi-lang-nodejs="`profile`" pulumi-lang-dotnet="`Profile`" pulumi-lang-go="`profile`" pulumi-lang-python="`profile`" pulumi-lang-yaml="`profile`" pulumi-lang-java="`profile`">`profile`</span> is *not* `CUSTOM`, this
  /// attribute will be empty.
  final List<String> customFeatures;

  /// Description of this SSL Policy.
  final String description;

  /// The set of enabled encryption ciphers as a result of the policy config
  final List<String> enabledFeatures;

  /// Fingerprint of this resource.
  final String fingerprint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The minimum supported TLS version of this policy.
  final String minTlsVersion;
  final String name;

  /// The Google-curated or custom profile used by this policy.
  final String profile;
  final String? project;

  /// The URI of the created resource.
  final String selfLink;

  GetSSLPolicyResult({
    required this.creationTimestamp,
    required this.customFeatures,
    required this.description,
    required this.enabledFeatures,
    required this.fingerprint,
    required this.id,
    required this.minTlsVersion,
    required this.name,
    required this.profile,
    this.project,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTimestamp'] = creationTimestamp;
    map['customFeatures'] = customFeatures;
    map['description'] = description;
    map['enabledFeatures'] = enabledFeatures;
    map['fingerprint'] = fingerprint;
    map['id'] = id;
    map['minTlsVersion'] = minTlsVersion;
    map['name'] = name;
    map['profile'] = profile;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetSSLPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSSLPolicyResult(
      creationTimestamp: map['creationTimestamp'] as String,
      customFeatures: (map['customFeatures'] as List).cast<String>(),
      description: map['description'] as String,
      enabledFeatures: (map['enabledFeatures'] as List).cast<String>(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      minTlsVersion: map['minTlsVersion'] as String,
      name: map['name'] as String,
      profile: map['profile'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
