// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailActionIncludeResources {
  /// Specifies whether the lifecycle action should apply to distributed AMIs.
  final pulumi.Input<bool>? amis;
  /// Specifies whether the lifecycle action should apply to distributed containers.
  final pulumi.Input<bool>? containers;
  /// Specifies whether the lifecycle action should apply to snapshots associated with distributed AMIs.
  final pulumi.Input<bool>? snapshots;

  /// Creates a new [LifecyclePolicyPolicyDetailActionIncludeResources].
  /// [amis] Specifies whether the lifecycle action should apply to distributed AMIs.
  /// [containers] Specifies whether the lifecycle action should apply to distributed containers.
  /// [snapshots] Specifies whether the lifecycle action should apply to snapshots associated with distributed AMIs.
  const LifecyclePolicyPolicyDetailActionIncludeResources({
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
      amis: (() { final guardedValue = map['amis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snapshots: (() { final guardedValue = map['snapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

