// ignore_for_file: unused_element, unnecessary_cast


/// The features rule.
class ResourceProviderManifestPropertiesFeaturesRule {
  /// The required feature policy.
  final String requiredFeaturesPolicy;

  /// Creates a new [ResourceProviderManifestPropertiesFeaturesRule].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceProviderManifestPropertiesFeaturesRule({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceProviderManifestPropertiesFeaturesRule.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesFeaturesRule(
      requiredFeaturesPolicy: map['requiredFeaturesPolicy'] as String,
    );
  }
}

