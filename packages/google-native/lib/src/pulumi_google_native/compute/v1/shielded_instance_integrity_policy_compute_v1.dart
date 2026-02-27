// ignore_for_file: unused_element, unnecessary_cast

/// The policy describes the baseline against which Instance boot integrity is measured.
class ShieldedInstanceIntegrityPolicyComputeV1 {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool? updateAutoLearnPolicy;

  ShieldedInstanceIntegrityPolicyComputeV1({
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

  factory ShieldedInstanceIntegrityPolicyComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ShieldedInstanceIntegrityPolicyComputeV1(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] == null
          ? null
          : map['updateAutoLearnPolicy'] as bool,
    );
  }
}
