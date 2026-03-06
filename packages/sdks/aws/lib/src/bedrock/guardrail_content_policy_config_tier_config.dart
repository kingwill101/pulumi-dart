// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailContentPolicyConfigTierConfig {
  /// The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  final pulumi.Input<String> tierName;

  /// Creates a new [GuardrailContentPolicyConfigTierConfig].
  /// [tierName] The name of the content policy tier. Valid values include STANDARD or CLASSIC.
  const GuardrailContentPolicyConfigTierConfig({
    required this.tierName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tierName': tierName,
    };
  }

  factory GuardrailContentPolicyConfigTierConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailContentPolicyConfigTierConfig(
      tierName: pulumi.Input.fromValue(map['tierName'] as String),
    );
  }
}

