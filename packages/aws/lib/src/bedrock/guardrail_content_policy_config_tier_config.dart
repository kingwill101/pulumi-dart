// ignore_for_file: unused_element, unnecessary_cast


class GuardrailContentPolicyConfigTierConfig {
  /// The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  final String tierName;

  /// Creates a new [GuardrailContentPolicyConfigTierConfig].
  /// [tierName] The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  GuardrailContentPolicyConfigTierConfig({
    required this.tierName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tierName': tierName,
    };
  }

  factory GuardrailContentPolicyConfigTierConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailContentPolicyConfigTierConfig(
      tierName: map['tierName'] as String,
    );
  }
}

