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
  BuildServiceBuildArgs({
    pulumi.Output<String>? buildName,
    required pulumi.Output<String> buildServiceName,
    pulumi.Output<BuildProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      buildName = pulumi.Input.asOptionalInput<String>(buildName),
      buildServiceName = pulumi.Input.asInput<String>(buildServiceName),
      properties = pulumi.Input.asOptionalInput<BuildProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      buildName: map['buildName'] == null ? null : pulumi.Output.create<String>(map['buildName'] as String),
      buildServiceName: pulumi.Output.create<String>(map['buildServiceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BuildProperties>(BuildProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

