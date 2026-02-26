// ignore_for_file: unused_element, unnecessary_cast

/// The policy describes the baseline against which VM instance boot integrity is measured.
class ShieldedVmIntegrityPolicy {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool? updateAutoLearnPolicy;

  ShieldedVmIntegrityPolicy({
    this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final updateAutoLearnPolicyValue = updateAutoLearnPolicy;
    if (updateAutoLearnPolicyValue != null) {
      map['updateAutoLearnPolicy'] = updateAutoLearnPolicyValue;
    }
    return map;
  }

  factory ShieldedVmIntegrityPolicy.fromMap(Map<String, dynamic> map) {
    return ShieldedVmIntegrityPolicy(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] == null
          ? null
          : map['updateAutoLearnPolicy'] as bool,
    );
  }
}
