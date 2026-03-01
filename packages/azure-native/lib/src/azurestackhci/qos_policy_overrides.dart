// ignore_for_file: unused_element, unnecessary_cast


/// The QoSPolicyOverrides of a cluster.
class QosPolicyOverrides {
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final String? bandwidthPercentageSMB;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final String? priorityValue8021ActionCluster;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final String? priorityValue8021ActionSMB;

  /// Creates a new [QosPolicyOverrides].
  /// [bandwidthPercentageSMB] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [priorityValue8021ActionCluster] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [priorityValue8021ActionSMB] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  QosPolicyOverrides({
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
      bandwidthPercentageSMB: map['bandwidthPercentageSMB'] == null ? null : map['bandwidthPercentageSMB'] as String,
      priorityValue8021ActionCluster: map['priorityValue8021ActionCluster'] == null ? null : map['priorityValue8021ActionCluster'] as String,
      priorityValue8021ActionSMB: map['priorityValue8021ActionSMB'] == null ? null : map['priorityValue8021ActionSMB'] as String,
    );
  }
}

