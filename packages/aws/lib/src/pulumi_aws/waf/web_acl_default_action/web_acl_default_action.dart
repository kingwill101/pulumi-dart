// ignore_for_file: unused_element, unnecessary_cast

class WebAclDefaultAction {
  /// Specifies how you want AWS WAF to respond to requests that don't match the criteria in any of the `rules`.
  /// e.g., `ALLOW` or `BLOCK`
  final String type;

  WebAclDefaultAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WebAclDefaultAction.fromMap(Map<String, dynamic> map) {
    return WebAclDefaultAction(
      type: map['type'] as String,
    );
  }
}
