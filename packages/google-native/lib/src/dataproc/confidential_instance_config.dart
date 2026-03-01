// ignore_for_file: unused_element, unnecessary_cast

/// Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs)
class ConfidentialInstanceConfig {
  /// Optional. Defines whether the instance should have confidential compute enabled.
  final bool? enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfig].
  /// [enableConfidentialCompute] Optional. Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfig({this.enableConfidentialCompute});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfig(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
