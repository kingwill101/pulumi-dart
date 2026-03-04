// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'java_component_configuration_property_response.dart';
import 'java_component_ingress_response.dart';
import 'java_component_properties_response_scale.dart';
import 'java_component_service_bind_response.dart';
import 'scg_route_response.dart';

/// Spring Cloud Gateway properties.
class SpringCloudGatewayComponentResponse {
  /// Type of the Java Component.
  /// Expected value is 'SpringCloudGateway'.
  final pulumi.Input<String> componentType;

  /// List of Java Components configuration properties
  final pulumi.Input<List<JavaComponentConfigurationPropertyResponse>>?
  configurations;

  /// Java Component Ingress configurations.
  final pulumi.Input<JavaComponentIngressResponse>? ingress;

  /// Provisioning state of the Java Component.
  final pulumi.Input<String> provisioningState;

  /// Java component scaling configurations
  final pulumi.Input<JavaComponentPropertiesResponseScale>? scale;

  /// List of Java Components that are bound to the Java component
  final pulumi.Input<List<JavaComponentServiceBindResponse>>? serviceBinds;

  /// Gateway route definition
  final pulumi.Input<List<ScgRouteResponse>>? springCloudGatewayRoutes;

  /// Creates a new [SpringCloudGatewayComponentResponse].
  /// [componentType] Type of the Java Component.
  /// [configurations] List of Java Components configuration properties
  /// [ingress] Java Component Ingress configurations.
  /// [provisioningState] Provisioning state of the Java Component.
  /// [scale] Java component scaling configurations
  /// [serviceBinds] List of Java Components that are bound to the Java component
  /// [springCloudGatewayRoutes] Gateway route definition
  SpringCloudGatewayComponentResponse({
    required this.componentType,
    this.configurations,
    this.ingress,
    required this.provisioningState,
    this.scale,
    this.serviceBinds,
    this.springCloudGatewayRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': componentType,
      'configurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<JavaComponentConfigurationPropertyResponse>,
            List<Map<String, dynamic>>
          >(
            configurations,
            (value) =>
                pulumi.Input.encodeList<
                  JavaComponentConfigurationPropertyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ingress':
          ?pulumi.Input.mapOptionalInputValue<
            JavaComponentIngressResponse,
            Map<String, dynamic>
          >(ingress, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'scale':
          ?pulumi.Input.mapOptionalInputValue<
            JavaComponentPropertiesResponseScale,
            Map<String, dynamic>
          >(scale, (value) => value.toMap()),
      'serviceBinds':
          ?pulumi.Input.mapOptionalInputValue<
            List<JavaComponentServiceBindResponse>,
            List<Map<String, dynamic>>
          >(
            serviceBinds,
            (value) =>
                pulumi.Input.encodeList<
                  JavaComponentServiceBindResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'springCloudGatewayRoutes':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScgRouteResponse>,
            List<Map<String, dynamic>>
          >(
            springCloudGatewayRoutes,
            (value) =>
                pulumi.Input.encodeList<ScgRouteResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory SpringCloudGatewayComponentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpringCloudGatewayComponentResponse(
      componentType: pulumi.Input.fromValue(map['componentType'] as String),
      configurations: (() {
        final guardedValue = map['configurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JavaComponentConfigurationPropertyResponse>(
            guardedValue,
            (value) => JavaComponentConfigurationPropertyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ingress: (() {
        final guardedValue = map['ingress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JavaComponentIngressResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      scale: (() {
        final guardedValue = map['scale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JavaComponentPropertiesResponseScale.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceBinds: (() {
        final guardedValue = map['serviceBinds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JavaComponentServiceBindResponse>(
            guardedValue,
            (value) => JavaComponentServiceBindResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      springCloudGatewayRoutes: (() {
        final guardedValue = map['springCloudGatewayRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ScgRouteResponse>(
            guardedValue,
            (value) => ScgRouteResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
