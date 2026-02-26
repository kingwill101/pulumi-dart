// ignore_for_file: unused_element, unnecessary_cast

class GetGlobalForwardingRuleMetadataFilterFilterLabel {
  /// The name of the global forwarding rule.
  ///
  /// - - -
  final String name;

  /// The value that the label must match. The value has a maximum
  /// length of 1024 characters.
  final String value;

  GetGlobalForwardingRuleMetadataFilterFilterLabel({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetGlobalForwardingRuleMetadataFilterFilterLabel.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalForwardingRuleMetadataFilterFilterLabel(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
