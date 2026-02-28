// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigNetworkPolicyConfig {
  final bool disabled;

  /// Creates a new [GetClusterAddonsConfigNetworkPolicyConfig].
  /// [disabled] Required.
  GetClusterAddonsConfigNetworkPolicyConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory GetClusterAddonsConfigNetworkPolicyConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigNetworkPolicyConfig(
      disabled: map['disabled'] as bool,
    );
  }
}
