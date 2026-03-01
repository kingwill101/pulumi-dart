// ignore_for_file: unused_element, unnecessary_cast


class LifecyclePolicyPolicyDetailActionIncludeResources {
  /// Specifies whether the lifecycle action should apply to distributed AMIs.
  final bool? amis;
  /// Specifies whether the lifecycle action should apply to distributed containers.
  final bool? containers;
  /// Specifies whether the lifecycle action should apply to snapshots associated with distributed AMIs.
  final bool? snapshots;

  /// Creates a new [LifecyclePolicyPolicyDetailActionIncludeResources].
  /// [amis] Specifies whether the lifecycle action should apply to distributed AMIs.
  /// [containers] Specifies whether the lifecycle action should apply to distributed containers.
  /// [snapshots] Specifies whether the lifecycle action should apply to snapshots associated with distributed AMIs.
  LifecyclePolicyPolicyDetailActionIncludeResources({
    this.amis,
    this.containers,
    this.snapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amis': ?amis,
      'containers': ?containers,
      'snapshots': ?snapshots,
    };
  }

  factory LifecyclePolicyPolicyDetailActionIncludeResources.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailActionIncludeResources(
      amis: map['amis'] == null ? null : map['amis'] as bool,
      containers: map['containers'] == null ? null : map['containers'] as bool,
      snapshots: map['snapshots'] == null ? null : map['snapshots'] as bool,
    );
  }
}

