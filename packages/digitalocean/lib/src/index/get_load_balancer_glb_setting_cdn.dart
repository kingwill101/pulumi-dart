// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerGlbSettingCdn {
  /// cache enable flag
  final bool isEnabled;

  /// Creates a new [GetLoadBalancerGlbSettingCdn].
  /// [isEnabled] cache enable flag
  GetLoadBalancerGlbSettingCdn({
    required this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': isEnabled,
    };
  }

  factory GetLoadBalancerGlbSettingCdn.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerGlbSettingCdn(
      isEnabled: map['isEnabled'] as bool,
    );
  }
}

