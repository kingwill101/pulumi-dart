// ignore_for_file: unused_element, unnecessary_cast


/// The template deployment policy.
class ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy {
  /// The capabilities.
  final String capabilities;
  /// The preflight notifications.
  final String? preflightNotifications;
  /// The preflight options.
  final String preflightOptions;

  /// Creates a new [ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy].
  /// [capabilities] The capabilities.
  /// [preflightNotifications] The preflight notifications.
  /// [preflightOptions] The preflight options.
  ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy({
    required this.capabilities,
    this.preflightNotifications,
    required this.preflightOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'preflightNotifications': ?preflightNotifications,
      'preflightOptions': preflightOptions,
    };
  }

  factory ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy(
      capabilities: map['capabilities'] as String,
      preflightNotifications: map['preflightNotifications'] == null ? null : map['preflightNotifications'] as String,
      preflightOptions: map['preflightOptions'] as String,
    );
  }
}

