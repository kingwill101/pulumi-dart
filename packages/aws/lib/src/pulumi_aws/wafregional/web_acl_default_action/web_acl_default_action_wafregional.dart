// ignore_for_file: unused_element, unnecessary_cast

class WebAclDefaultActionWafregional {
  /// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a ruleE.g., `ALLOW`, `BLOCK` or `COUNT`
  final String type;

  WebAclDefaultActionWafregional({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WebAclDefaultActionWafregional.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultActionWafregional(
      type: map['type'] as String,
    );
  }
}
