// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeBeta {
  /// A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  final List<String> contentTypes;

  SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeBeta({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentTypes'] = contentTypes;
    return map;
  }

  factory SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeBeta(
      contentTypes: (map['contentTypes'] as List).cast<String>(),
    );
  }
}
