// ignore_for_file: unused_element, unnecessary_cast

class IpGroupRule {
  /// The description of the IP group.
  final String? description;

  /// The IP address range, in CIDR notation, e.g., `10.0.0.0/16`
  final String source;

  /// Creates a new [IpGroupRule].
  /// [description] The description of the IP group.
  /// [source] The IP address range, in CIDR notation, e.g., `10.0.0.0/16`
  IpGroupRule({
    this.description,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['source'] = source;
    return map;
  }

  factory IpGroupRule.fromMap(Map<String, dynamic> map) {
    return IpGroupRule(
      description:
          map['description'] == null ? null : map['description'] as String,
      source: map['source'] as String,
    );
  }
}
