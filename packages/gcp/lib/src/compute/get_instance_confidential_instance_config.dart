// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceConfidentialInstanceConfig {
  /// The confidential computing technology the instance uses.
  /// SEV is an AMD feature. TDX is an Intel feature. One of the following
  /// values is required: SEV, SEV_SNP, TDX. If SEV_SNP, min_cpu_platform =
  /// "AMD Milan" is currently required.
  final String confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled. Field will be deprecated in a future release
  final bool enableConfidentialCompute;

  /// Creates a new [GetInstanceConfidentialInstanceConfig].
  /// [confidentialInstanceType] The confidential computing technology the instance uses.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled. Field will be deprecated in a future release
  GetInstanceConfidentialInstanceConfig({
    required this.confidentialInstanceType,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': confidentialInstanceType,
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory GetInstanceConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}

