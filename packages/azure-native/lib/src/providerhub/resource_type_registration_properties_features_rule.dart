// ignore_for_file: unused_element, unnecessary_cast


/// The features rule.
class ResourceTypeRegistrationPropertiesFeaturesRule {
  /// The required feature policy.
  final String requiredFeaturesPolicy;

  /// Creates a new [ResourceTypeRegistrationPropertiesFeaturesRule].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceTypeRegistrationPropertiesFeaturesRule({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceTypeRegistrationPropertiesFeaturesRule.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesFeaturesRule(
      requiredFeaturesPolicy: map['requiredFeaturesPolicy'] as String,
    );
  }
}

