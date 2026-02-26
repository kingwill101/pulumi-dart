// ignore_for_file: unused_element, unnecessary_cast

/// Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs)
class ConfidentialInstanceConfig4 {
  /// Optional. Defines whether the instance should have confidential compute enabled.
  final bool? enableConfidentialCompute;

  ConfidentialInstanceConfig4({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    return map;
  }

  factory ConfidentialInstanceConfig4.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfig4(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
