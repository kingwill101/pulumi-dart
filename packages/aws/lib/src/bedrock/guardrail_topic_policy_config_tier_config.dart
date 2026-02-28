// ignore_for_file: unused_element, unnecessary_cast


class GuardrailTopicPolicyConfigTierConfig {
  /// The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  final String tierName;

  /// Creates a new [GuardrailTopicPolicyConfigTierConfig].
  /// [tierName] The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  GuardrailTopicPolicyConfigTierConfig({
    required this.tierName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tierName': tierName,
    };
  }

  factory GuardrailTopicPolicyConfigTierConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailTopicPolicyConfigTierConfig(
      tierName: map['tierName'] as String,
    );
  }
}

