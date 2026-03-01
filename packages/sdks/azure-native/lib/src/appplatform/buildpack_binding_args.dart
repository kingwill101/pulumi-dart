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
    required pulumi.Output<String> buildServiceName,
    required pulumi.Output<String> builderName,
    pulumi.Output<String>? buildpackBindingName,
    pulumi.Output<BuildpackBindingProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      buildServiceName = pulumi.Input.asInput<String>(buildServiceName),
      builderName = pulumi.Input.asInput<String>(builderName),
      buildpackBindingName = pulumi.Input.asOptionalInput<String>(buildpackBindingName),
      properties = pulumi.Input.asOptionalInput<BuildpackBindingProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      buildServiceName: pulumi.Output.create<String>(map['buildServiceName'] as String),
      builderName: pulumi.Output.create<String>(map['builderName'] as String),
      buildpackBindingName: map['buildpackBindingName'] == null ? null : pulumi.Output.create<String>(map['buildpackBindingName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BuildpackBindingProperties>(BuildpackBindingProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

