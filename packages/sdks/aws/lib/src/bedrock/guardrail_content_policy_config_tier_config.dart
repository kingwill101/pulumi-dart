// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailContentPolicyConfigTierConfig {
  /// Name of the topic policy tier. Valid values: `CLASSIC`, `STANDARD`. `STANDARD` requires `crossRegionConfig`.
  final pulumi.Input<String> tierName;

  /// Creates a new [GuardrailContentPolicyConfigTierConfig].
  /// [tierName] Name of the topic policy tier. Valid values: `CLASSIC`, `STANDARD`. `STANDARD` requires `crossRegionConfig`.
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
