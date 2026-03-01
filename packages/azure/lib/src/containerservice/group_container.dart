// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_container_liveness_probe.dart';
import 'group_container_port.dart';
import 'group_container_readiness_probe.dart';
import 'group_container_security.dart';
import 'group_container_volume.dart';

class GroupContainer {
  /// A list of commands which should be run on the container. Changing this forces a new resource to be created.
  final List<String>? commands;
  /// The required number of CPU cores of the containers. Changing this forces a new resource to be created.
  final double cpu;
  /// The upper limit of the number of CPU cores of the containers.
  final double? cpuLimit;
  /// A list of environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  final Map<String, String>? environmentVariables;
  /// The container image name. Changing this forces a new resource to be created.
  final String image;
  /// The definition of a readiness probe for this container as documented in the `liveness_probe` block below. Changing this forces a new resource to be created.
  final GroupContainerLivenessProbe? livenessProbe;
  /// The required memory of the containers in GB. Changing this forces a new resource to be created.
  final double memory;
  /// The upper limit of the memory of the containers in GB.
  final double? memoryLimit;
  /// Specifies the name of the Container. Changing this forces a new resource to be created.
  final String name;
  /// A set of public ports for the container. Changing this forces a new resource to be created. Set as documented in the `ports` block below.
  final List<GroupContainerPort>? ports;
  /// The definition of a readiness probe for this container as documented in the `readiness_probe` block below. Changing this forces a new resource to be created.
  final GroupContainerReadinessProbe? readinessProbe;
  /// A list of sensitive environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  final Map<String, String>? secureEnvironmentVariables;
  /// The definition of the security context for this container as documented in the `security` block below. Changing this forces a new resource to be created.
  final List<GroupContainerSecurity>? securities;
  /// The definition of a volume mount for this container as documented in the `volume` block below. Changing this forces a new resource to be created.
  final List<GroupContainerVolume>? volumes;

  /// Creates a new [GroupContainer].
  /// [commands] A list of commands which should be run on the container. Changing this forces a new resource to be created.
  /// [cpu] The required number of CPU cores of the containers. Changing this forces a new resource to be created.
  /// [cpuLimit] The upper limit of the number of CPU cores of the containers.
  /// [environmentVariables] A list of environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  /// [image] The container image name. Changing this forces a new resource to be created.
  /// [livenessProbe] The definition of a readiness probe for this container as documented in the `liveness_probe` block below. Changing this forces a new resource to be created.
  /// [memory] The required memory of the containers in GB. Changing this forces a new resource to be created.
  /// [memoryLimit] The upper limit of the memory of the containers in GB.
  /// [name] Specifies the name of the Container. Changing this forces a new resource to be created.
  /// [ports] A set of public ports for the container. Changing this forces a new resource to be created. Set as documented in the `ports` block below.
  /// [readinessProbe] The definition of a readiness probe for this container as documented in the `readiness_probe` block below. Changing this forces a new resource to be created.
  /// [secureEnvironmentVariables] A list of sensitive environment variables to be set on the container. Specified as a map of name/value pairs. Changing this forces a new resource to be created.
  /// [securities] The definition of the security context for this container as documented in the `security` block below. Changing this forces a new resource to be created.
  /// [volumes] The definition of a volume mount for this container as documented in the `volume` block below. Changing this forces a new resource to be created.
  GroupContainer({
    this.commands,
    required this.cpu,
    this.cpuLimit,
    this.environmentVariables,
    required this.image,
    this.livenessProbe,
    required this.memory,
    this.memoryLimit,
    required this.name,
    this.ports,
    this.readinessProbe,
    this.secureEnvironmentVariables,
    this.securities,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'cpu': cpu,
      'cpuLimit': ?cpuLimit,
      'environmentVariables': ?environmentVariables,
      'image': image,
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'memory': memory,
      'memoryLimit': ?memoryLimit,
      'name': name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<GroupContainerPort, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'readinessProbe': ?readinessProbe == null ? null : readinessProbe!.toMap(),
      'secureEnvironmentVariables': ?secureEnvironmentVariables,
      'securities': ?securities == null ? null : pulumi.Input.encodeList<GroupContainerSecurity, Map<String, dynamic>>(securities!, (value) => value.toMap()),
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<GroupContainerVolume, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory GroupContainer.fromMap(Map<String, dynamic> map) {
    return GroupContainer(
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      cpu: map['cpu'] as double,
      cpuLimit: map['cpuLimit'] == null ? null : map['cpuLimit'] as double,
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      image: map['image'] as String,
      livenessProbe: map['livenessProbe'] == null ? null : GroupContainerLivenessProbe.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      memory: map['memory'] as double,
      memoryLimit: map['memoryLimit'] == null ? null : map['memoryLimit'] as double,
      name: map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<GroupContainerPort>(map['ports'], (value) => GroupContainerPort.fromMap((value as Map).cast<String, dynamic>())),
      readinessProbe: map['readinessProbe'] == null ? null : GroupContainerReadinessProbe.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>()),
      secureEnvironmentVariables: map['secureEnvironmentVariables'] == null ? null : (map['secureEnvironmentVariables'] as Map).cast<String, String>(),
      securities: map['securities'] == null ? null : pulumi.Input.decodeList<GroupContainerSecurity>(map['securities'], (value) => GroupContainerSecurity.fromMap((value as Map).cast<String, dynamic>())),
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<GroupContainerVolume>(map['volumes'], (value) => GroupContainerVolume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

