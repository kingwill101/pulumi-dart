// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'builder_properties.dart';

/// {@template pulumi_appplatform_build_service_builder_args_doc}
/// The set of arguments for BuildServiceBuilder.
/// {@endtemplate}
/// {@macro pulumi_appplatform_build_service_builder_args_doc}
class BuildServiceBuilderArgs {
  /// The name of the build service resource.
  final pulumi.Input<String> buildServiceName;
  /// The name of the builder resource.
  final pulumi.Input<String?>? builderName;
  /// Property of the Builder resource.
  final pulumi.Input<BuilderProperties?>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [BuildServiceBuilderArgs].
  /// [buildServiceName] The name of the build service resource.
  /// [builderName] The name of the builder resource.
  /// [properties] Property of the Builder resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  const BuildServiceBuilderArgs({
    required this.buildServiceName,
    this.builderName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildServiceName': buildServiceName,
      'builderName': ?builderName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BuilderProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory BuildServiceBuilderArgs.fromMap(Map<String, dynamic> map) {
    return BuildServiceBuilderArgs(
      buildServiceName: pulumi.Input.fromValue(map['buildServiceName'] as String),
      builderName: (() { final guardedValue = map['builderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuilderProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
