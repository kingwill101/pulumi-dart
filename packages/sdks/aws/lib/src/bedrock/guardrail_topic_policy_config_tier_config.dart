// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailTopicPolicyConfigTierConfig {
  /// The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  final pulumi.Input<String> tierName;

  /// Creates a new [GuardrailTopicPolicyConfigTierConfig].
  /// [tierName] The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  const GuardrailTopicPolicyConfigTierConfig({
    required this.tierName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tierName': tierName,
    };
  }

  factory GuardrailTopicPolicyConfigTierConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailTopicPolicyConfigTierConfig(
      tierName: pulumi.Input.fromValue(map['tierName'] as String),
    );
  }
}
