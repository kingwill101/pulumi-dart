// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_properties.dart';

/// {@template pulumi_appplatform_build_service_build_args_doc}
/// The set of arguments for BuildServiceBuild.
/// {@endtemplate}
/// {@macro pulumi_appplatform_build_service_build_args_doc}
class BuildServiceBuildArgs {
  /// The name of the build resource.
  final pulumi.Input<String>? buildName;
  /// The name of the build service resource.
  final pulumi.Input<String> buildServiceName;
  /// Properties of the build resource
  final pulumi.Input<BuildProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [BuildServiceBuildArgs].
  /// [buildName] The name of the build resource.
  /// [buildServiceName] The name of the build service resource.
  /// [properties] Properties of the build resource
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  const BuildServiceBuildArgs({
    this.buildName,
    required this.buildServiceName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildName': ?buildName,
      'buildServiceName': buildServiceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BuildProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory BuildServiceBuildArgs.fromMap(Map<String, dynamic> map) {
    return BuildServiceBuildArgs(
      buildName: (() { final guardedValue = map['buildName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildServiceName: pulumi.Input.fromValue(map['buildServiceName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

