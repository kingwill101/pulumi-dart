// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildpack_binding_properties.dart';

/// {@template pulumi_appplatform_buildpack_binding_args_doc}
/// The set of arguments for BuildpackBinding.
/// {@endtemplate}
/// {@macro pulumi_appplatform_buildpack_binding_args_doc}
class BuildpackBindingArgs {
  /// The name of the build service resource.
  final pulumi.Input<String> buildServiceName;
  /// The name of the builder resource.
  final pulumi.Input<String> builderName;
  /// The name of the Buildpack Binding Name
  final pulumi.Input<String>? buildpackBindingName;
  /// Properties of a buildpack binding
  final pulumi.Input<BuildpackBindingProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [BuildpackBindingArgs].
  /// [buildServiceName] The name of the build service resource.
  /// [builderName] The name of the builder resource.
  /// [buildpackBindingName] The name of the Buildpack Binding Name
  /// [properties] Properties of a buildpack binding
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  const BuildpackBindingArgs({
    required this.buildServiceName,
    required this.builderName,
    this.buildpackBindingName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildServiceName': buildServiceName,
      'builderName': builderName,
      'buildpackBindingName': ?buildpackBindingName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BuildpackBindingProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory BuildpackBindingArgs.fromMap(Map<String, dynamic> map) {
    return BuildpackBindingArgs(
      buildServiceName: pulumi.Input.fromValue(map['buildServiceName'] as String),
      builderName: pulumi.Input.fromValue(map['builderName'] as String),
      buildpackBindingName: (() { final guardedValue = map['buildpackBindingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildpackBindingProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
