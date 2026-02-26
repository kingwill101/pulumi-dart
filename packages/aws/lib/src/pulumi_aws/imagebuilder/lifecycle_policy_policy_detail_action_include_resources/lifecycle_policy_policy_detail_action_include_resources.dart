// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailActionIncludeResources {
  /// Specifies whether the lifecycle action should apply to distributed AMIs.
  final bool? amis;

  /// Specifies whether the lifecycle action should apply to distributed containers.
  final bool? containers;

  /// Specifies whether the lifecycle action should apply to snapshots associated with distributed AMIs.
  final bool? snapshots;

  LifecyclePolicyPolicyDetailActionIncludeResources({
    this.amis,
    this.containers,
    this.snapshots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amisValue = amis;
    if (amisValue != null) {
      map['amis'] = amisValue;
    }
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] = containersValue;
    }
    final snapshotsValue = snapshots;
    if (snapshotsValue != null) {
      map['snapshots'] = snapshotsValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailActionIncludeResources.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailActionIncludeResources(
      amis: map['amis'] == null ? null : map['amis'] as bool,
      containers: map['containers'] == null ? null : map['containers'] as bool,
      snapshots: map['snapshots'] == null ? null : map['snapshots'] as bool,
    );
  }
}
