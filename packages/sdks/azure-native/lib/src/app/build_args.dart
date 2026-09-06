// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_configuration.dart';
import 'container_registry_with_custom_image.dart';

/// {@template pulumi_app_build_args_doc}
/// The set of arguments for Build.
/// {@endtemplate}
/// {@macro pulumi_app_build_args_doc}
class BuildArgs {
  /// The name of a build.
  final pulumi.Input<String?>? buildName;
  /// The name of the builder.
  final pulumi.Input<String> builderName;
  /// Configuration of the build.
  final pulumi.Input<BuildConfiguration?>? configuration;
  /// Container registry that the final image will be uploaded to.
  final pulumi.Input<ContainerRegistryWithCustomImage?>? destinationContainerRegistry;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BuildArgs].
  /// [buildName] The name of a build.
  /// [builderName] The name of the builder.
  /// [configuration] Configuration of the build.
  /// [destinationContainerRegistry] Container registry that the final image will be uploaded to.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const BuildArgs({
    this.buildName,
    required this.builderName,
    this.configuration,
    this.destinationContainerRegistry,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildName': ?buildName,
      'builderName': builderName,
      'configuration': ?pulumi.Input.mapOptionalInputValue<BuildConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'destinationContainerRegistry': ?pulumi.Input.mapOptionalInputValue<ContainerRegistryWithCustomImage, Map<String, dynamic>>(destinationContainerRegistry, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BuildArgs.fromMap(Map<String, dynamic> map) {
    return BuildArgs(
      buildName: (() { final guardedValue = map['buildName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      builderName: pulumi.Input.fromValue(map['builderName'] as String),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationContainerRegistry: (() { final guardedValue = map['destinationContainerRegistry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerRegistryWithCustomImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
