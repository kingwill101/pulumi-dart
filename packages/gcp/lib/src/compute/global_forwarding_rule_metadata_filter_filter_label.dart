// ignore_for_file: unused_element, unnecessary_cast


class GlobalForwardingRuleMetadataFilterFilterLabel {
  /// Name of the metadata label. The length must be between
  /// 1 and 1024 characters, inclusive.
  final String name;
  /// The value that the label must match. The value has a maximum
  /// length of 1024 characters.
  final String value;

  /// Creates a new [GlobalForwardingRuleMetadataFilterFilterLabel].
  /// [name] Name of the metadata label. The length must be between
  /// [value] The value that the label must match. The value has a maximum
  GlobalForwardingRuleMetadataFilterFilterLabel({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GlobalForwardingRuleMetadataFilterFilterLabel.fromMap(Map<String, dynamic> map) {
    return GlobalForwardingRuleMetadataFilterFilterLabel(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

