// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eci_scaling_configuration_init_container_environment_var.dart';
import 'eci_scaling_configuration_init_container_port.dart';
import 'eci_scaling_configuration_init_container_volume_mount.dart';

class EciScalingConfigurationInitContainer {
  /// The arguments passed to the commands.
  final List<String>? args;
  /// The commands run by the init container.
  final List<String>? commands;
  /// The amount of CPU resources allocated to the container.
  final double? cpu;
  /// The structure of environmentVars.
  /// See `environment_vars` below for details.
  final List<EciScalingConfigurationInitContainerEnvironmentVar>? environmentVars;
  /// The number GPUs.
  final int? gpu;
  /// The image of the container.
  final String? image;
  /// The restart policy of the image.
  final String? imagePullPolicy;
  /// The amount of memory resources allocated to the container.
  final double? memory;
  /// The name of the mounted volume.
  final String? name;
  /// The structure of port. See `ports` below for details.
  final List<EciScalingConfigurationInitContainerPort>? ports;
  /// Grant certain permissions to processes within container. Optional values:
  /// - NET_ADMIN: Allow network management tasks to be performed.
  /// - NET_RAW: Allow raw sockets.
  final List<String>? securityContextCapabilityAdds;
  /// Mounts the container's root filesystem as read-only.
  final bool? securityContextReadOnlyRootFileSystem;
  /// Specifies user ID  under which all processes run.
  final int? securityContextRunAsUser;
  /// The structure of volumeMounts. See `volume_mounts` below for details.
  final List<EciScalingConfigurationInitContainerVolumeMount>? volumeMounts;
  /// The working directory of the container.
  final String? workingDir;

  /// Creates a new [EciScalingConfigurationInitContainer].
  /// [args] The arguments passed to the commands.
  /// [commands] The commands run by the init container.
  /// [cpu] The amount of CPU resources allocated to the container.
  /// [environmentVars] The structure of environmentVars.
  /// [gpu] The number GPUs.
  /// [image] The image of the container.
  /// [imagePullPolicy] The restart policy of the image.
  /// [memory] The amount of memory resources allocated to the container.
  /// [name] The name of the mounted volume.
  /// [ports] The structure of port. See `ports` below for details.
  /// [securityContextCapabilityAdds] Grant certain permissions to processes within container. Optional values:
  /// [securityContextReadOnlyRootFileSystem] Mounts the container's root filesystem as read-only.
  /// [securityContextRunAsUser] Specifies user ID  under which all processes run.
  /// [volumeMounts] The structure of volumeMounts. See `volume_mounts` below for details.
  /// [workingDir] The working directory of the container.
  EciScalingConfigurationInitContainer({
    this.args,
    this.commands,
    this.cpu,
    this.environmentVars,
    this.gpu,
    this.image,
    this.imagePullPolicy,
    this.memory,
    this.name,
    this.ports,
    this.securityContextCapabilityAdds,
    this.securityContextReadOnlyRootFileSystem,
    this.securityContextRunAsUser,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'cpu': ?cpu,
      'environmentVars': ?environmentVars == null ? null : pulumi.Input.encodeList<EciScalingConfigurationInitContainerEnvironmentVar, Map<String, dynamic>>(environmentVars!, (value) => value.toMap()),
      'gpu': ?gpu,
      'image': ?image,
      'imagePullPolicy': ?imagePullPolicy,
      'memory': ?memory,
      'name': ?name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<EciScalingConfigurationInitContainerPort, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'securityContextCapabilityAdds': ?securityContextCapabilityAdds,
      'securityContextReadOnlyRootFileSystem': ?securityContextReadOnlyRootFileSystem,
      'securityContextRunAsUser': ?securityContextRunAsUser,
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<EciScalingConfigurationInitContainerVolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'workingDir': ?workingDir,
    };
  }

  factory EciScalingConfigurationInitContainer.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationInitContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      environmentVars: map['environmentVars'] == null ? null : pulumi.Input.decodeList<EciScalingConfigurationInitContainerEnvironmentVar>(map['environmentVars'], (value) => EciScalingConfigurationInitContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>())),
      gpu: map['gpu'] == null ? null : map['gpu'] as int,
      image: map['image'] == null ? null : map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] == null ? null : map['imagePullPolicy'] as String,
      memory: map['memory'] == null ? null : map['memory'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<EciScalingConfigurationInitContainerPort>(map['ports'], (value) => EciScalingConfigurationInitContainerPort.fromMap((value as Map).cast<String, dynamic>())),
      securityContextCapabilityAdds: map['securityContextCapabilityAdds'] == null ? null : (map['securityContextCapabilityAdds'] as List).cast<String>(),
      securityContextReadOnlyRootFileSystem: map['securityContextReadOnlyRootFileSystem'] == null ? null : map['securityContextReadOnlyRootFileSystem'] as bool,
      securityContextRunAsUser: map['securityContextRunAsUser'] == null ? null : map['securityContextRunAsUser'] as int,
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<EciScalingConfigurationInitContainerVolumeMount>(map['volumeMounts'], (value) => EciScalingConfigurationInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

