// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'java_component_configuration_property_response.dart';
import 'java_component_properties_response_scale.dart';
import 'java_component_service_bind_response.dart';

/// Spring Cloud Config properties.
class SpringCloudConfigComponentResponse {
  /// Type of the Java Component.
  /// Expected value is 'SpringCloudConfig'.
  final pulumi.Input<String> componentType;
  /// List of Java Components configuration properties
  final pulumi.Input<List<JavaComponentConfigurationPropertyResponse>>? configurations;
  /// Provisioning state of the Java Component.
  final pulumi.Input<String> provisioningState;
  /// Java component scaling configurations
  final pulumi.Input<JavaComponentPropertiesResponseScale>? scale;
  /// List of Java Components that are bound to the Java component
  final pulumi.Input<List<JavaComponentServiceBindResponse>>? serviceBinds;

  /// Creates a new [SpringCloudConfigComponentResponse].
  /// [componentType] Type of the Java Component.
  /// [configurations] List of Java Components configuration properties
  /// [provisioningState] Provisioning state of the Java Component.
  /// [scale] Java component scaling configurations
  /// [serviceBinds] List of Java Components that are bound to the Java component
  SpringCloudConfigComponentResponse({
    required this.componentType,
    this.configurations,
    required this.provisioningState,
    this.scale,
    this.serviceBinds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': componentType,
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<JavaComponentConfigurationPropertyResponse>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<JavaComponentConfigurationPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'scale': ?pulumi.Input.mapOptionalInputValue<JavaComponentPropertiesResponseScale, Map<String, dynamic>>(scale, (value) => value.toMap()),
      'serviceBinds': ?pulumi.Input.mapOptionalInputValue<List<JavaComponentServiceBindResponse>, List<Map<String, dynamic>>>(serviceBinds, (value) => pulumi.Input.encodeList<JavaComponentServiceBindResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SpringCloudConfigComponentResponse.fromMap(Map<String, dynamic> map) {
    return SpringCloudConfigComponentResponse(
      componentType: (map['componentType'] as String).input(),
      configurations: map['configurations'] == null ? null : (pulumi.Input.decodeList<JavaComponentConfigurationPropertyResponse>(map['configurations'], (value) => JavaComponentConfigurationPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      scale: map['scale'] == null ? null : (JavaComponentPropertiesResponseScale.fromMap((map['scale'] as Map).cast<String, dynamic>())).input(),
      serviceBinds: map['serviceBinds'] == null ? null : (pulumi.Input.decodeList<JavaComponentServiceBindResponse>(map['serviceBinds'], (value) => JavaComponentServiceBindResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

