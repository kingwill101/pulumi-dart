// ignore_for_file: unused_element, unnecessary_cast


/// Dynamic Configuration Properties
class DynamicConfigurationPropertiesResponse {
  /// Current Version of dynamic configuration
  final String currentVersion;
  /// Type of dynamic configuration model
  final String dynamicConfigurationModel;
  /// Type of dynamic configuration
  final String dynamicConfigurationType;
  /// Provisioning state of resource
  final String provisioningState;

  /// Creates a new [DynamicConfigurationPropertiesResponse].
  /// [currentVersion] Current Version of dynamic configuration
  /// [dynamicConfigurationModel] Type of dynamic configuration model
  /// [dynamicConfigurationType] Type of dynamic configuration
  /// [provisioningState] Provisioning state of resource
  DynamicConfigurationPropertiesResponse({
    required this.currentVersion,
    required this.dynamicConfigurationModel,
    required this.dynamicConfigurationType,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersion': currentVersion,
      'dynamicConfigurationModel': dynamicConfigurationModel,
      'dynamicConfigurationType': dynamicConfigurationType,
      'provisioningState': provisioningState,
    };
  }

  factory DynamicConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DynamicConfigurationPropertiesResponse(
      currentVersion: map['currentVersion'] as String,
      dynamicConfigurationModel: map['dynamicConfigurationModel'] as String,
      dynamicConfigurationType: map['dynamicConfigurationType'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

