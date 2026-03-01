// ignore_for_file: unused_element, unnecessary_cast


/// The template deployment options.
class ResourceTypeRegistrationPropertiesTemplateDeploymentOptions {
  /// The preflight options.
  final List<String>? preflightOptions;
  /// Whether preflight is supported.
  final bool? preflightSupported;

  /// Creates a new [ResourceTypeRegistrationPropertiesTemplateDeploymentOptions].
  /// [preflightOptions] The preflight options.
  /// [preflightSupported] Whether preflight is supported.
  ResourceTypeRegistrationPropertiesTemplateDeploymentOptions({
    this.preflightOptions,
    this.preflightSupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preflightOptions': ?preflightOptions,
      'preflightSupported': ?preflightSupported,
    };
  }

  factory ResourceTypeRegistrationPropertiesTemplateDeploymentOptions.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesTemplateDeploymentOptions(
      preflightOptions: map['preflightOptions'] == null ? null : (map['preflightOptions'] as List).cast<String>(),
      preflightSupported: map['preflightSupported'] == null ? null : map['preflightSupported'] as bool,
    );
  }
}

