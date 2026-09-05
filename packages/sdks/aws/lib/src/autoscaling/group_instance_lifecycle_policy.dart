// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_instance_lifecycle_policy_retention_triggers.dart';

class GroupInstanceLifecyclePolicy {
  /// Conditions that trigger instance retention behavior. Defined below.
  final pulumi.Input<GroupInstanceLifecyclePolicyRetentionTriggers?>? retentionTriggers;

  /// Creates a new [GroupInstanceLifecyclePolicy].
  /// [retentionTriggers] Conditions that trigger instance retention behavior. Defined below.
  const GroupInstanceLifecyclePolicy({
    this.retentionTriggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionTriggers': ?pulumi.Input.mapOptionalInputValue<GroupInstanceLifecyclePolicyRetentionTriggers, Map<String, dynamic>>(retentionTriggers, (value) => value.toMap()),
    };
  }

  factory GroupInstanceLifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return GroupInstanceLifecyclePolicy(
      retentionTriggers: (() { final guardedValue = map['retentionTriggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupInstanceLifecyclePolicyRetentionTriggers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
