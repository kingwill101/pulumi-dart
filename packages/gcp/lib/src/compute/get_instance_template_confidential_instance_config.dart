// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTemplateConfidentialInstanceConfig {
  /// The confidential computing technology the instance uses.
  /// SEV is an AMD feature. TDX is an Intel feature. One of the following
  /// values is required: SEV, SEV_SNP, TDX. If SEV_SNP, min_cpu_platform =
  /// "AMD Milan" is currently required.
  final String confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled. `on_host_maintenance` has to be set to TERMINATE or this will fail to create the VM.
  final bool enableConfidentialCompute;

  /// Creates a new [GetInstanceTemplateConfidentialInstanceConfig].
  /// [confidentialInstanceType] The confidential computing technology the instance uses.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled. `on_host_maintenance` has to be set to TERMINATE or this will fail to create the VM.
  GetInstanceTemplateConfidentialInstanceConfig({
    required this.confidentialInstanceType,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': confidentialInstanceType,
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory GetInstanceTemplateConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}

