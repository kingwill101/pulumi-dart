// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromMachineImageConfidentialInstanceConfig {
  /// The confidential computing technology the instance uses.
  /// SEV is an AMD feature. TDX is an Intel feature. One of the following
  /// values is required: SEV, SEV_SNP, TDX. If SEV_SNP, min_cpu_platform =
  /// "AMD Milan" is currently required.
  final String? confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled. Field will be deprecated in a future release
  final bool? enableConfidentialCompute;

  /// Creates a new [InstanceFromMachineImageConfidentialInstanceConfig].
  /// [confidentialInstanceType] The confidential computing technology the instance uses.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled. Field will be deprecated in a future release
  InstanceFromMachineImageConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType,
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory InstanceFromMachineImageConfidentialInstanceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFromMachineImageConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] == null
          ? null
          : map['confidentialInstanceType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
