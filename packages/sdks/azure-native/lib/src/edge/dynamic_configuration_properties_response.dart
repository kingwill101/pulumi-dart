// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dynamic Configuration Properties
class DynamicConfigurationPropertiesResponse {
  /// Current Version of dynamic configuration
  final pulumi.Input<String> currentVersion;

  /// Type of dynamic configuration model
  final pulumi.Input<String> dynamicConfigurationModel;

  /// Type of dynamic configuration
  final pulumi.Input<String> dynamicConfigurationType;

  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;

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

  factory DynamicConfigurationPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DynamicConfigurationPropertiesResponse(
      currentVersion: pulumi.Input.fromValue(map['currentVersion'] as String),
      dynamicConfigurationModel: pulumi.Input.fromValue(
        map['dynamicConfigurationModel'] as String,
      ),
      dynamicConfigurationType: pulumi.Input.fromValue(
        map['dynamicConfigurationType'] as String,
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
