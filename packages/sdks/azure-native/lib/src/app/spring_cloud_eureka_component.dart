// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'java_component_configuration_property.dart';
import 'java_component_properties_scale.dart';
import 'java_component_service_bind.dart';

/// Spring Cloud Eureka properties.
class SpringCloudEurekaComponent {
  /// Type of the Java Component.
  /// Expected value is 'SpringCloudEureka'.
  final pulumi.Input<String> componentType;
  /// List of Java Components configuration properties
  final pulumi.Input<List<JavaComponentConfigurationProperty>>? configurations;
  /// Java component scaling configurations
  final pulumi.Input<JavaComponentPropertiesScale>? scale;
  /// List of Java Components that are bound to the Java component
  final pulumi.Input<List<JavaComponentServiceBind>>? serviceBinds;

  /// Creates a new [SpringCloudEurekaComponent].
  /// [componentType] Type of the Java Component.
  /// [configurations] List of Java Components configuration properties
  /// [scale] Java component scaling configurations
  /// [serviceBinds] List of Java Components that are bound to the Java component
  SpringCloudEurekaComponent({
    required this.componentType,
    this.configurations,
    this.scale,
    this.serviceBinds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': componentType,
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<JavaComponentConfigurationProperty>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<JavaComponentConfigurationProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scale': ?pulumi.Input.mapOptionalInputValue<JavaComponentPropertiesScale, Map<String, dynamic>>(scale, (value) => value.toMap()),
      'serviceBinds': ?pulumi.Input.mapOptionalInputValue<List<JavaComponentServiceBind>, List<Map<String, dynamic>>>(serviceBinds, (value) => pulumi.Input.encodeList<JavaComponentServiceBind, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SpringCloudEurekaComponent.fromMap(Map<String, dynamic> map) {
    return SpringCloudEurekaComponent(
      componentType: (map['componentType'] as String).input(),
      configurations: map['configurations'] == null ? null : (pulumi.Input.decodeList<JavaComponentConfigurationProperty>(map['configurations'], (value) => JavaComponentConfigurationProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scale: map['scale'] == null ? null : (JavaComponentPropertiesScale.fromMap((map['scale'] as Map).cast<String, dynamic>())).input(),
      serviceBinds: map['serviceBinds'] == null ? null : (pulumi.Input.decodeList<JavaComponentServiceBind>(map['serviceBinds'], (value) => JavaComponentServiceBind.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

