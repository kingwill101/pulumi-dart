// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEncryptionByDefault.
class GetEncryptionByDefaultResult {
  /// Whether or not default EBS encryption is enabled. Returns as <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool enabled;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetEncryptionByDefaultResult({
    required this.enabled,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetEncryptionByDefaultResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptionByDefaultResult(
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
