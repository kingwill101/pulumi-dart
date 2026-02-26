// ignore_for_file: unused_element, unnecessary_cast

class GuardrailContentPolicyConfigTierConfig {
  /// The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  final String tierName;

  GuardrailContentPolicyConfigTierConfig({
    required this.tierName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tierName'] = tierName;
    return map;
  }

  factory GuardrailContentPolicyConfigTierConfig.fromMap(
      Map<String, dynamic> map) {
    return GuardrailContentPolicyConfigTierConfig(
      tierName: map['tierName'] as String,
    );
  }
}
