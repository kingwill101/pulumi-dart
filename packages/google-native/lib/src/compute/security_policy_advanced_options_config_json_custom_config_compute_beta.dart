// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta {
  /// A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  final List<String>? contentTypes;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta({
    this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'contentTypes': ?contentTypes};
  }

  factory SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta(
      contentTypes: map['contentTypes'] == null
          ? null
          : (map['contentTypes'] as List).cast<String>(),
    );
  }
}
