// ignore_for_file: unused_element, unnecessary_cast

class ResourceConfigurationResourceConfigurationDefinitionArnResource {
  /// The ARN of the Resource for this configuration.
  final String arn;

  /// Creates a new [ResourceConfigurationResourceConfigurationDefinitionArnResource].
  /// [arn] The ARN of the Resource for this configuration.
  ResourceConfigurationResourceConfigurationDefinitionArnResource({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory ResourceConfigurationResourceConfigurationDefinitionArnResource.fromMap(
      Map<String, dynamic> map) {
    return ResourceConfigurationResourceConfigurationDefinitionArnResource(
      arn: map['arn'] as String,
    );
  }
}
