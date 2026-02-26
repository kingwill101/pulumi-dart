// ignore_for_file: unused_element, unnecessary_cast

class URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel {
  /// Name of metadata label. The name can have a maximum length of 1024 characters
  /// and must be at least 1 character long.
  final String name;

  /// The value of the label must match the specified value. value can have a maximum
  /// length of 1024 characters.
  final String value;

  URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel.fromMap(
      Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
