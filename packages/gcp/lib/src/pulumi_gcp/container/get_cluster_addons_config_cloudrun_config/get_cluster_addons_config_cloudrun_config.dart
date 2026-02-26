// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigCloudrunConfig {
  final bool disabled;
  final String loadBalancerType;

  GetClusterAddonsConfigCloudrunConfig({
    required this.disabled,
    required this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['loadBalancerType'] = loadBalancerType;
    return map;
  }

  factory GetClusterAddonsConfigCloudrunConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigCloudrunConfig(
      disabled: map['disabled'] as bool,
      loadBalancerType: map['loadBalancerType'] as String,
    );
  }
}
