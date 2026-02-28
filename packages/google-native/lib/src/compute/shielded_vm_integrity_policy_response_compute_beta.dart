// ignore_for_file: unused_element, unnecessary_cast

/// The policy describes the baseline against which VM instance boot integrity is measured.
class ShieldedVmIntegrityPolicyResponseComputeBeta {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool updateAutoLearnPolicy;

  /// Creates a new [ShieldedVmIntegrityPolicyResponseComputeBeta].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  ShieldedVmIntegrityPolicyResponseComputeBeta({
    required this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['updateAutoLearnPolicy'] = updateAutoLearnPolicy;
    return map;
  }

  factory ShieldedVmIntegrityPolicyResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ShieldedVmIntegrityPolicyResponseComputeBeta(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] as bool,
    );
  }
}
