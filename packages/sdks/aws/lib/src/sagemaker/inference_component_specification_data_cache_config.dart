// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceComponentSpecificationDataCacheConfig {
  /// Whether the endpoint caches model artifacts and container images.
  final pulumi.Input<bool> enableCaching;

  /// Creates a new [InferenceComponentSpecificationDataCacheConfig].
  /// [enableCaching] Whether the endpoint caches model artifacts and container images.
  const InferenceComponentSpecificationDataCacheConfig({
    required this.enableCaching,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCaching': enableCaching,
    };
  }

  factory InferenceComponentSpecificationDataCacheConfig.fromMap(Map<String, dynamic> map) {
    return InferenceComponentSpecificationDataCacheConfig(
      enableCaching: pulumi.Input.fromValue(map['enableCaching'] as bool),
    );
  }
}
