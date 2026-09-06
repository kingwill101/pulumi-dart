// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The QoSPolicyOverrides of a cluster.
class QosPolicyOverrides {
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String?>? bandwidthPercentageSMB;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String?>? priorityValue8021ActionCluster;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String?>? priorityValue8021ActionSMB;

  /// Creates a new [QosPolicyOverrides].
  /// [bandwidthPercentageSMB] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [priorityValue8021ActionCluster] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [priorityValue8021ActionSMB] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  const QosPolicyOverrides({
    this.bandwidthPercentageSMB,
    this.priorityValue8021ActionCluster,
    this.priorityValue8021ActionSMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPercentageSMB': ?bandwidthPercentageSMB,
      'priorityValue8021ActionCluster': ?priorityValue8021ActionCluster,
      'priorityValue8021ActionSMB': ?priorityValue8021ActionSMB,
    };
  }

  factory QosPolicyOverrides.fromMap(Map<String, dynamic> map) {
    return QosPolicyOverrides(
      bandwidthPercentageSMB: (() { final guardedValue = map['bandwidthPercentageSMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priorityValue8021ActionCluster: (() { final guardedValue = map['priorityValue8021ActionCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priorityValue8021ActionSMB: (() { final guardedValue = map['priorityValue8021ActionSMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
