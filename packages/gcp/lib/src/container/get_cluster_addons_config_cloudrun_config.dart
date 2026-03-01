// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigCloudrunConfig {
  final bool disabled;
  final String loadBalancerType;

  /// Creates a new [GetClusterAddonsConfigCloudrunConfig].
  /// [disabled] Required.
  /// [loadBalancerType] Required.
  GetClusterAddonsConfigCloudrunConfig({
    required this.disabled,
    required this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'loadBalancerType': loadBalancerType,
    };
  }

  factory GetClusterAddonsConfigCloudrunConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAddonsConfigCloudrunConfig(
      disabled: map['disabled'] as bool,
      loadBalancerType: map['loadBalancerType'] as String,
    );
  }
}
