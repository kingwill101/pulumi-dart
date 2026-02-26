// ignore_for_file: unused_element, unnecessary_cast

class WebAclDefaultAction2 {
  /// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a ruleE.g., `ALLOW`, `BLOCK` or `COUNT`
  final String type;

  WebAclDefaultAction2({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WebAclDefaultAction2.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultAction2(
      type: map['type'] as String,
    );
  }
}
