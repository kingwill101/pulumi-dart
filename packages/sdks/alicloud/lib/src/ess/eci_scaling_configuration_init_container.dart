// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eci_scaling_configuration_init_container_environment_var.dart';
import 'eci_scaling_configuration_init_container_port.dart';
import 'eci_scaling_configuration_init_container_volume_mount.dart';

class EciScalingConfigurationInitContainer {
  /// The arguments passed to the commands.
  final pulumi.Input<List<String>>? args;
  /// The commands run by the init container.
  final pulumi.Input<List<String>>? commands;
  /// The amount of CPU resources allocated to the container.
  final pulumi.Input<double>? cpu;
  /// The structure of environmentVars.
  /// See `environment_vars` below for details.
  final pulumi.Input<List<EciScalingConfigurationInitContainerEnvironmentVar>>? environmentVars;
  /// The number GPUs.
  final pulumi.Input<int>? gpu;
  /// The image of the container.
  final pulumi.Input<String>? image;
  /// The restart policy of the image.
  final pulumi.Input<String>? imagePullPolicy;
  /// The amount of memory resources allocated to the container.
  final pulumi.Input<double>? memory;
  /// The name of the mounted volume.
  final pulumi.Input<String>? name;
  /// The structure of port. See `ports` below for details.
  final pulumi.Input<List<EciScalingConfigurationInitContainerPort>>? ports;
  /// Grant certain permissions to processes within container. Optional values:
  /// - NET_ADMIN: Allow network management tasks to be performed.
  /// - NET_RAW: Allow raw sockets.
  final pulumi.Input<List<String>>? securityContextCapabilityAdds;
  /// Mounts the container's root filesystem as read-only.
  final pulumi.Input<bool>? securityContextReadOnlyRootFileSystem;
  /// Specifies user ID  under which all processes run.
  final pulumi.Input<int>? securityContextRunAsUser;
  /// The structure of volumeMounts. See `volume_mounts` below for details.
  final pulumi.Input<List<EciScalingConfigurationInitContainerVolumeMount>>? volumeMounts;
  /// The working directory of the container.
  final pulumi.Input<String>? workingDir;

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
      'environmentVars': ?pulumi.Input.mapOptionalInputValue<List<EciScalingConfigurationInitContainerEnvironmentVar>, List<Map<String, dynamic>>>(environmentVars, (value) => pulumi.Input.encodeList<EciScalingConfigurationInitContainerEnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gpu': ?gpu,
      'image': ?image,
      'imagePullPolicy': ?imagePullPolicy,
      'memory': ?memory,
      'name': ?name,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<EciScalingConfigurationInitContainerPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<EciScalingConfigurationInitContainerPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityContextCapabilityAdds': ?securityContextCapabilityAdds,
      'securityContextReadOnlyRootFileSystem': ?securityContextReadOnlyRootFileSystem,
      'securityContextRunAsUser': ?securityContextRunAsUser,
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<EciScalingConfigurationInitContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<EciScalingConfigurationInitContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workingDir': ?workingDir,
    };
  }

  factory EciScalingConfigurationInitContainer.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationInitContainer(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands']! as List).cast<String>()).input(),
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      environmentVars: map['environmentVars'] == null ? null : (pulumi.Input.decodeList<EciScalingConfigurationInitContainerEnvironmentVar>(map['environmentVars']!, (value) => EciScalingConfigurationInitContainerEnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gpu: map['gpu'] == null ? null : (map['gpu']! as int).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      imagePullPolicy: map['imagePullPolicy'] == null ? null : (map['imagePullPolicy']! as String).input(),
      memory: map['memory'] == null ? null : (map['memory']! as double).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<EciScalingConfigurationInitContainerPort>(map['ports']!, (value) => EciScalingConfigurationInitContainerPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityContextCapabilityAdds: map['securityContextCapabilityAdds'] == null ? null : ((map['securityContextCapabilityAdds']! as List).cast<String>()).input(),
      securityContextReadOnlyRootFileSystem: map['securityContextReadOnlyRootFileSystem'] == null ? null : (map['securityContextReadOnlyRootFileSystem']! as bool).input(),
      securityContextRunAsUser: map['securityContextRunAsUser'] == null ? null : (map['securityContextRunAsUser']! as int).input(),
      volumeMounts: map['volumeMounts'] == null ? null : (pulumi.Input.decodeList<EciScalingConfigurationInitContainerVolumeMount>(map['volumeMounts']!, (value) => EciScalingConfigurationInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workingDir: map['workingDir'] == null ? null : (map['workingDir']! as String).input(),
    );
  }
}

