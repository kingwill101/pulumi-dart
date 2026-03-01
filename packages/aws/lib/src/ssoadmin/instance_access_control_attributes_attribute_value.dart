// ignore_for_file: unused_element, unnecessary_cast


class InstanceAccessControlAttributesAttributeValue {
  /// The identity source to use when mapping a specified attribute to AWS SSO.
  final List<String> sources;

  /// Creates a new [InstanceAccessControlAttributesAttributeValue].
  /// [sources] The identity source to use when mapping a specified attribute to AWS SSO.
  InstanceAccessControlAttributesAttributeValue({
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sources': sources,
    };
  }

  factory InstanceAccessControlAttributesAttributeValue.fromMap(Map<String, dynamic> map) {
    return InstanceAccessControlAttributesAttributeValue(
      sources: (map['sources'] as List).cast<String>(),
    );
  }
}

