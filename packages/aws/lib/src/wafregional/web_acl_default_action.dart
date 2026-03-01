// ignore_for_file: unused_element, unnecessary_cast


class WebAclDefaultAction {
  /// Specifies how you want AWS WAF Regional to respond to requests that match the settings in a ruleE.g., `ALLOW`, `BLOCK` or `COUNT`
  final String type;

  /// Creates a new [WebAclDefaultAction].
  /// [type] Specifies how you want AWS WAF Regional to respond to requests that match the settings in a ruleE.g., `ALLOW`, `BLOCK` or `COUNT`
  WebAclDefaultAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory WebAclDefaultAction.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultAction(
      type: map['type'] as String,
    );
  }
}

