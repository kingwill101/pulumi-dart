// ignore_for_file: unused_element, unnecessary_cast

class GuardrailTopicPolicyConfigTierConfig {
  /// The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  final String tierName;

  GuardrailTopicPolicyConfigTierConfig({
    required this.tierName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tierName'] = tierName;
    return map;
  }

  factory GuardrailTopicPolicyConfigTierConfig.fromMap(
      Map<String, dynamic> map) {
    return GuardrailTopicPolicyConfigTierConfig(
      tierName: map['tierName'] as String,
    );
  }
}
