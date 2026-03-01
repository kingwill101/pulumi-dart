// ignore_for_file: unused_element, unnecessary_cast

/// The policy describes the baseline against which Instance boot integrity is measured.
class ShieldedInstanceIntegrityPolicyResponseComputeBeta {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool updateAutoLearnPolicy;

  /// Creates a new [ShieldedInstanceIntegrityPolicyResponseComputeBeta].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  ShieldedInstanceIntegrityPolicyResponseComputeBeta({
    required this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'updateAutoLearnPolicy': updateAutoLearnPolicy};
  }

  factory ShieldedInstanceIntegrityPolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ShieldedInstanceIntegrityPolicyResponseComputeBeta(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] as bool,
    );
  }
}
