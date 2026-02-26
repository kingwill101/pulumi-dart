// ignore_for_file: unused_element, unnecessary_cast

/// The policy describes the baseline against which VM instance boot integrity is measured.
class ShieldedVmIntegrityPolicyResponse2 {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool updateAutoLearnPolicy;

  ShieldedVmIntegrityPolicyResponse2({
    required this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['updateAutoLearnPolicy'] = updateAutoLearnPolicy;
    return map;
  }

  factory ShieldedVmIntegrityPolicyResponse2.fromMap(Map<String, dynamic> map) {
    return ShieldedVmIntegrityPolicyResponse2(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] as bool,
    );
  }
}
