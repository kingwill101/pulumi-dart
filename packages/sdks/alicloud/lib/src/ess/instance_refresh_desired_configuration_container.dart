// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_refresh_desired_configuration_container_environment_var.dart';

class InstanceRefreshDesiredConfigurationContainer {
  /// The arguments for the container startup command.
  final pulumi.Input<List<String>>? args;
  /// The container startup command.
  final pulumi.Input<List<String>>? commands;
  /// Information about the environment variables. See `environment_vars` below for details.
  final pulumi.Input<List<InstanceRefreshDesiredConfigurationContainerEnvironmentVar>>? environmentVars;
  /// The container image.
  final pulumi.Input<String>? image;
  /// The custom name of the container.
  final pulumi.Input<String>? name;

  /// Creates a new [InstanceRefreshDesiredConfigurationContainer].
  /// [args] The arguments for the container startup command.
  /// [commands] The container startup command.
  /// [environmentVars] Information about the environment variables. See `environment_vars` below for details.
  /// [image] The container image.
  /// [name] The custom name of the container.
  InstanceRefreshDesiredConfigurationContainer({
    this.args,
    this.commands,
    this.environmentVars,
    this.image,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'environmentVars': ?pulumi.Input.mapOptionalInputValue<List<InstanceRefreshDesiredConfigurationContainerEnvironmentVar>, List<Map<String, dynamic>>>(environmentVars, (value) => pulumi.Input.encodeList<InstanceRefreshDesiredConfigurationContainerEnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'name': ?name,
    };
  }

  factory InstanceRefreshDesiredConfigurationContainer.fromMap(Map<String, dynamic> map) {
    return InstanceRefreshDesiredConfigurationContainer(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands']! as List).cast<String>()).input(),
      environmentVars: map['environmentVars'] == null ? null : (pulumi.Input.decodeList<InstanceRefreshDesiredConfigurationContainerEnvironmentVar>(map['environmentVars']!, (value) => InstanceRefreshDesiredConfigurationContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

