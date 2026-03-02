// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The QoSPolicyOverrides of a cluster.
class QosPolicyOverridesResponse {
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String>? bandwidthPercentageSMB;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String>? priorityValue8021ActionCluster;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<String>? priorityValue8021ActionSMB;

  /// Creates a new [QosPolicyOverridesResponse].
  /// [bandwidthPercentageSMB] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [priorityValue8021ActionCluster] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [priorityValue8021ActionSMB] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  QosPolicyOverridesResponse({
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

  factory QosPolicyOverridesResponse.fromMap(Map<String, dynamic> map) {
    return QosPolicyOverridesResponse(
      bandwidthPercentageSMB: map['bandwidthPercentageSMB'] == null ? null : (map['bandwidthPercentageSMB'] as String).input(),
      priorityValue8021ActionCluster: map['priorityValue8021ActionCluster'] == null ? null : (map['priorityValue8021ActionCluster'] as String).input(),
      priorityValue8021ActionSMB: map['priorityValue8021ActionSMB'] == null ? null : (map['priorityValue8021ActionSMB'] as String).input(),
    );
  }
}

