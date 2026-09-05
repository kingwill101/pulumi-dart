// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsScheduleFastRestoreRule {
  /// The Availability Zones in which to enable fast snapshot restore.
  final pulumi.Input<List<String>> availabilityZones;
  final pulumi.Input<int?>? count;
  final pulumi.Input<int?>? interval;
  final pulumi.Input<String?>? intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleFastRestoreRule].
  /// [availabilityZones] The Availability Zones in which to enable fast snapshot restore.
  /// [count] Optional.
  /// [interval] Optional.
  /// [intervalUnit] Optional.
  const LifecyclePolicyPolicyDetailsScheduleFastRestoreRule({
    required this.availabilityZones,
    this.count,
    this.interval,
    this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'count': ?count,
      'interval': ?interval,
      'intervalUnit': ?intervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleFastRestoreRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleFastRestoreRule(
      availabilityZones: pulumi.Input.fromValue((map['availabilityZones'] as List).cast<String>()),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      intervalUnit: (() { final guardedValue = map['intervalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
