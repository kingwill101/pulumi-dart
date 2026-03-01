// ignore_for_file: unused_element, unnecessary_cast


/// The features rule.
class ResourceTypeRegistrationPropertiesFeaturesRuleResponse {
  /// The required feature policy.
  final String requiredFeaturesPolicy;

  /// Creates a new [ResourceTypeRegistrationPropertiesFeaturesRuleResponse].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceTypeRegistrationPropertiesFeaturesRuleResponse({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceTypeRegistrationPropertiesFeaturesRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesFeaturesRuleResponse(
      requiredFeaturesPolicy: map['requiredFeaturesPolicy'] as String,
    );
  }
}

