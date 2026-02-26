// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse2 {
  /// A list of custom Content-Type header values to apply the JSON parsing. As per RFC 1341, a Content-Type header value has the following format: Content-Type := type "/" subtype *[";" parameter] When configuring a custom Content-Type header value, only the type/subtype needs to be specified, and the parameters should be excluded.
  final List<String> contentTypes;

  SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse2({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentTypes'] = contentTypes;
    return map;
  }

  factory SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse2(
      contentTypes: (map['contentTypes'] as List).cast<String>(),
    );
  }
}
