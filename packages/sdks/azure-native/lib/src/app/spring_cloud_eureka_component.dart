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
      'configurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<JavaComponentConfigurationProperty>,
            List<Map<String, dynamic>>
          >(
            configurations,
            (value) =>
                pulumi.Input.encodeList<
                  JavaComponentConfigurationProperty,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'scale':
          ?pulumi.Input.mapOptionalInputValue<
            JavaComponentPropertiesScale,
            Map<String, dynamic>
          >(scale, (value) => value.toMap()),
      'serviceBinds':
          ?pulumi.Input.mapOptionalInputValue<
            List<JavaComponentServiceBind>,
            List<Map<String, dynamic>>
          >(
            serviceBinds,
            (value) =>
                pulumi.Input.encodeList<
                  JavaComponentServiceBind,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SpringCloudEurekaComponent.fromMap(Map<String, dynamic> map) {
    return SpringCloudEurekaComponent(
      componentType: pulumi.Input.fromValue(map['componentType'] as String),
      configurations: (() {
        final guardedValue = map['configurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JavaComponentConfigurationProperty>(
            guardedValue,
            (value) => JavaComponentConfigurationProperty.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      scale: (() {
        final guardedValue = map['scale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JavaComponentPropertiesScale.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceBinds: (() {
        final guardedValue = map['serviceBinds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JavaComponentServiceBind>(
            guardedValue,
            (value) => JavaComponentServiceBind.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
