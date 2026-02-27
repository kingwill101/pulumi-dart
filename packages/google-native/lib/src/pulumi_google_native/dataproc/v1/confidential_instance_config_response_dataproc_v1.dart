// ignore_for_file: unused_element, unnecessary_cast

/// Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs)
class ConfidentialInstanceConfigResponseDataprocV1 {
  /// Optional. Defines whether the instance should have confidential compute enabled.
  final bool enableConfidentialCompute;

  ConfidentialInstanceConfigResponseDataprocV1({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    return map;
  }

  factory ConfidentialInstanceConfigResponseDataprocV1.fromMap(
      Map<String, dynamic> map) {
    return ConfidentialInstanceConfigResponseDataprocV1(
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
