// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'java_component_configuration_property.dart';
import 'java_component_properties_scale.dart';
import 'java_component_service_bind.dart';
import 'scg_route.dart';

/// Spring Cloud Gateway properties.
class SpringCloudGatewayComponent {
  /// Type of the Java Component.
  /// Expected value is 'SpringCloudGateway'.
  final pulumi.Input<String> componentType;
  /// List of Java Components configuration properties
  final pulumi.Input<List<JavaComponentConfigurationProperty>>? configurations;
  /// Java component scaling configurations
  final pulumi.Input<JavaComponentPropertiesScale>? scale;
  /// List of Java Components that are bound to the Java component
  final pulumi.Input<List<JavaComponentServiceBind>>? serviceBinds;
  /// Gateway route definition
  final pulumi.Input<List<ScgRoute>>? springCloudGatewayRoutes;

  /// Creates a new [SpringCloudGatewayComponent].
  /// [componentType] Type of the Java Component.
  /// [configurations] List of Java Components configuration properties
  /// [scale] Java component scaling configurations
  /// [serviceBinds] List of Java Components that are bound to the Java component
  /// [springCloudGatewayRoutes] Gateway route definition
  SpringCloudGatewayComponent({
    required this.componentType,
    this.configurations,
    this.scale,
    this.serviceBinds,
    this.springCloudGatewayRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': componentType,
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<JavaComponentConfigurationProperty>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<JavaComponentConfigurationProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scale': ?pulumi.Input.mapOptionalInputValue<JavaComponentPropertiesScale, Map<String, dynamic>>(scale, (value) => value.toMap()),
      'serviceBinds': ?pulumi.Input.mapOptionalInputValue<List<JavaComponentServiceBind>, List<Map<String, dynamic>>>(serviceBinds, (value) => pulumi.Input.encodeList<JavaComponentServiceBind, Map<String, dynamic>>(value, (value) => value.toMap())),
      'springCloudGatewayRoutes': ?pulumi.Input.mapOptionalInputValue<List<ScgRoute>, List<Map<String, dynamic>>>(springCloudGatewayRoutes, (value) => pulumi.Input.encodeList<ScgRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SpringCloudGatewayComponent.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayComponent(
      componentType: (map['componentType'] as String).input(),
      configurations: map['configurations'] == null ? null : (pulumi.Input.decodeList<JavaComponentConfigurationProperty>(map['configurations'], (value) => JavaComponentConfigurationProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scale: map['scale'] == null ? null : (JavaComponentPropertiesScale.fromMap((map['scale'] as Map).cast<String, dynamic>())).input(),
      serviceBinds: map['serviceBinds'] == null ? null : (pulumi.Input.decodeList<JavaComponentServiceBind>(map['serviceBinds'], (value) => JavaComponentServiceBind.fromMap((value as Map).cast<String, dynamic>()))).input(),
      springCloudGatewayRoutes: map['springCloudGatewayRoutes'] == null ? null : (pulumi.Input.decodeList<ScgRoute>(map['springCloudGatewayRoutes'], (value) => ScgRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

