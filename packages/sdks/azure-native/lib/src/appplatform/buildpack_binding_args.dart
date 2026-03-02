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
  BuildpackBindingArgs({
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
      buildServiceName: (map['buildServiceName'] as String).input(),
      builderName: (map['builderName'] as String).input(),
      buildpackBindingName: map['buildpackBindingName'] == null ? null : (map['buildpackBindingName']! as String).input(),
      properties: map['properties'] == null ? null : (BuildpackBindingProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

