// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsParameters {
  /// Indicates whether to exclude the root volume from snapshots created using CreateSnapshots. The default is `false`.
  final pulumi.Input<bool>? excludeBootVolume;
  /// Applies to AMI lifecycle policies only. Indicates whether targeted instances are rebooted when the lifecycle policy runs. `true` indicates that targeted instances are not rebooted when the policy runs. `false` indicates that target instances are rebooted when the policy runs. The default is `true` (instances are not rebooted).
  final pulumi.Input<bool>? noReboot;

  /// Creates a new [LifecyclePolicyPolicyDetailsParameters].
  /// [excludeBootVolume] Indicates whether to exclude the root volume from snapshots created using CreateSnapshots. The default is `false`.
  /// [noReboot] Applies to AMI lifecycle policies only. Indicates whether targeted instances are rebooted when the lifecycle policy runs. `true` indicates that targeted instances are not rebooted when the policy runs. `false` indicates that target instances are rebooted when the policy runs. The default is `true` (instances are not rebooted).
  LifecyclePolicyPolicyDetailsParameters({
    this.excludeBootVolume,
    this.noReboot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeBootVolume': ?excludeBootVolume,
      'noReboot': ?noReboot,
    };
  }

  factory LifecyclePolicyPolicyDetailsParameters.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsParameters(
      excludeBootVolume: map['excludeBootVolume'] == null ? null : (map['excludeBootVolume'] as bool).input(),
      noReboot: map['noReboot'] == null ? null : (map['noReboot'] as bool).input(),
    );
  }
}

