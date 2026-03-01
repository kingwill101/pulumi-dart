// ignore_for_file: unused_element, unnecessary_cast


class FastHttpsAppWafSecurityPolicy {
  /// Setting `true` will enable FAST to create WAF Security Policy.
  final bool enable;

  /// Creates a new [FastHttpsAppWafSecurityPolicy].
  /// [enable] Setting `true` will enable FAST to create WAF Security Policy.
  FastHttpsAppWafSecurityPolicy({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory FastHttpsAppWafSecurityPolicy.fromMap(Map<String, dynamic> map) {
    return FastHttpsAppWafSecurityPolicy(
      enable: map['enable'] as bool,
    );
  }
}

