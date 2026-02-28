// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateShieldedVmConfig {
  /// Enables secure boot for the runtime.
  final bool? enableSecureBoot;

  /// Creates a new [RuntimeTemplateShieldedVmConfig].
  /// [enableSecureBoot] Enables secure boot for the runtime.
  RuntimeTemplateShieldedVmConfig({
    this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableSecureBootValue = enableSecureBoot;
    if (enableSecureBootValue != null) {
      map['enableSecureBoot'] = enableSecureBootValue;
    }
    return map;
  }

  factory RuntimeTemplateShieldedVmConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateShieldedVmConfig(
      enableSecureBoot: map['enableSecureBoot'] == null
          ? null
          : map['enableSecureBoot'] as bool,
    );
  }
}
