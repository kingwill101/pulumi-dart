// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'java_component_configuration_property_response.dart';
import 'java_component_ingress_response.dart';
import 'java_component_properties_response_scale.dart';
import 'java_component_service_bind_response.dart';

/// Spring Cloud Eureka properties.
class SpringCloudEurekaComponentResponse {
  /// Type of the Java Component.
  /// Expected value is 'SpringCloudEureka'.
  final String componentType;
  /// List of Java Components configuration properties
  final List<JavaComponentConfigurationPropertyResponse>? configurations;
  /// Java Component Ingress configurations.
  final JavaComponentIngressResponse? ingress;
  /// Provisioning state of the Java Component.
  final String provisioningState;
  /// Java component scaling configurations
  final JavaComponentPropertiesResponseScale? scale;
  /// List of Java Components that are bound to the Java component
  final List<JavaComponentServiceBindResponse>? serviceBinds;

  /// Creates a new [SpringCloudEurekaComponentResponse].
  /// [componentType] Type of the Java Component.
  /// [configurations] List of Java Components configuration properties
  /// [ingress] Java Component Ingress configurations.
  /// [provisioningState] Provisioning state of the Java Component.
  /// [scale] Java component scaling configurations
  /// [serviceBinds] List of Java Components that are bound to the Java component
  SpringCloudEurekaComponentResponse({
    required this.componentType,
    this.configurations,
    this.ingress,
    required this.provisioningState,
    this.scale,
    this.serviceBinds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': componentType,
      'configurations': ?configurations == null ? null : pulumi.Input.encodeList<JavaComponentConfigurationPropertyResponse, Map<String, dynamic>>(configurations!, (value) => value.toMap()),
      'ingress': ?ingress == null ? null : ingress!.toMap(),
      'provisioningState': provisioningState,
      'scale': ?scale == null ? null : scale!.toMap(),
      'serviceBinds': ?serviceBinds == null ? null : pulumi.Input.encodeList<JavaComponentServiceBindResponse, Map<String, dynamic>>(serviceBinds!, (value) => value.toMap()),
    };
  }

  factory SpringCloudEurekaComponentResponse.fromMap(Map<String, dynamic> map) {
    return SpringCloudEurekaComponentResponse(
      componentType: map['componentType'] as String,
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<JavaComponentConfigurationPropertyResponse>(map['configurations'], (value) => JavaComponentConfigurationPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null ? null : JavaComponentIngressResponse.fromMap((map['ingress'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      scale: map['scale'] == null ? null : JavaComponentPropertiesResponseScale.fromMap((map['scale'] as Map).cast<String, dynamic>()),
      serviceBinds: map['serviceBinds'] == null ? null : pulumi.Input.decodeList<JavaComponentServiceBindResponse>(map['serviceBinds'], (value) => JavaComponentServiceBindResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

