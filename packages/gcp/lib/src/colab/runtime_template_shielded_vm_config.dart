// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateShieldedVmConfig {
  /// Enables secure boot for the runtime.
  final bool? enableSecureBoot;

  /// Creates a new [RuntimeTemplateShieldedVmConfig].
  /// [enableSecureBoot] Enables secure boot for the runtime.
  RuntimeTemplateShieldedVmConfig({this.enableSecureBoot});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableSecureBoot': ?enableSecureBoot};
  }

  factory RuntimeTemplateShieldedVmConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateShieldedVmConfig(
      enableSecureBoot: map['enableSecureBoot'] == null
          ? null
          : map['enableSecureBoot'] as bool,
    );
  }
}
