// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleRuleLabel {
  /// Label string.
  final String name;

  WebAclRuleRuleLabel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory WebAclRuleRuleLabel.fromMap(Map<String, dynamic> map) {
    return WebAclRuleRuleLabel(
      name: map['name'] as String,
    );
  }
}
