// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_template_spec_container_env/get_service_template_spec_container_env.dart';
import '../get_service_template_spec_container_env_from/get_service_template_spec_container_env_from.dart';
import '../get_service_template_spec_container_liveness_probe/get_service_template_spec_container_liveness_probe.dart';
import '../get_service_template_spec_container_port/get_service_template_spec_container_port.dart';
import '../get_service_template_spec_container_readiness_probe/get_service_template_spec_container_readiness_probe.dart';
import '../get_service_template_spec_container_resource/get_service_template_spec_container_resource.dart';
import '../get_service_template_spec_container_startup_probe/get_service_template_spec_container_startup_probe.dart';
import '../get_service_template_spec_container_volume_mount/get_service_template_spec_container_volume_mount.dart';

class GetServiceTemplateSpecContainer {
  /// Arguments to the entrypoint.
  /// The docker image's CMD is used if this is not provided.
  final List<String> args;

  /// Entrypoint array. Not executed within a shell.
  /// The docker image's ENTRYPOINT is used if this is not provided.
  final List<String> commands;

  /// List of sources to populate environment variables in the container.
  /// All invalid keys will be reported as an event when the container is starting.
  /// When a key exists in multiple sources, the value associated with the last source will
  /// take precedence. Values defined by an Env with a duplicate key will take
  /// precedence.
  final List<GetServiceTemplateSpecContainerEnvFrom> envFroms;

  /// List of environment variables to set in the container.
  final List<GetServiceTemplateSpecContainerEnv> envs;

  /// Docker image name. This is most often a reference to a container located
  /// in the container registry, such as gcr.io/cloudrun/hello
  final String image;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final List<GetServiceTemplateSpecContainerLivenessProbe> livenessProbes;

  /// The name of the Cloud Run Service.
  final String name;

  /// List of open ports in the container.
  final List<GetServiceTemplateSpecContainerPort> ports;

  /// Periodic probe of container readiness.
  final List<GetServiceTemplateSpecContainerReadinessProbe> readinessProbes;

  /// Compute Resources required by this container. Used to set values such as max memory
  final List<GetServiceTemplateSpecContainerResource> resources;

  /// Startup probe of application within the container.
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not be added to service endpoints if the probe fails.
  final List<GetServiceTemplateSpecContainerStartupProbe> startupProbes;

  /// Volume to mount into the container's filesystem.
  /// Only supports SecretVolumeSources.
  final List<GetServiceTemplateSpecContainerVolumeMount> volumeMounts;

  /// Container's working directory.
  /// If not specified, the container runtime's default will be used, which
  /// might be configured in the container image.
  final String workingDir;

  GetServiceTemplateSpecContainer({
    required this.args,
    required this.commands,
    required this.envFroms,
    required this.envs,
    required this.image,
    required this.livenessProbes,
    required this.name,
    required this.ports,
    required this.readinessProbes,
    required this.resources,
    required this.startupProbes,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['commands'] = commands;
    map['envFroms'] = Input.encodeList<GetServiceTemplateSpecContainerEnvFrom,
        Map<String, dynamic>>(envFroms, (value) => value.toMap());
    map['envs'] = Input.encodeList<GetServiceTemplateSpecContainerEnv,
        Map<String, dynamic>>(envs, (value) => value.toMap());
    map['image'] = image;
    map['livenessProbes'] = Input.encodeList<
        GetServiceTemplateSpecContainerLivenessProbe,
        Map<String, dynamic>>(livenessProbes, (value) => value.toMap());
    map['name'] = name;
    map['ports'] = Input.encodeList<GetServiceTemplateSpecContainerPort,
        Map<String, dynamic>>(ports, (value) => value.toMap());
    map['readinessProbes'] = Input.encodeList<
        GetServiceTemplateSpecContainerReadinessProbe,
        Map<String, dynamic>>(readinessProbes, (value) => value.toMap());
    map['resources'] = Input.encodeList<GetServiceTemplateSpecContainerResource,
        Map<String, dynamic>>(resources, (value) => value.toMap());
    map['startupProbes'] = Input.encodeList<
        GetServiceTemplateSpecContainerStartupProbe,
        Map<String, dynamic>>(startupProbes, (value) => value.toMap());
    map['volumeMounts'] = Input.encodeList<
        GetServiceTemplateSpecContainerVolumeMount,
        Map<String, dynamic>>(volumeMounts, (value) => value.toMap());
    map['workingDir'] = workingDir;
    return map;
  }

  factory GetServiceTemplateSpecContainer.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainer(
      args: (map['args'] as List).cast<String>(),
      commands: (map['commands'] as List).cast<String>(),
      envFroms: Input.decodeList<GetServiceTemplateSpecContainerEnvFrom>(
          map['envFroms'],
          (value) => GetServiceTemplateSpecContainerEnvFrom.fromMap(
              (value as Map).cast<String, dynamic>())),
      envs: Input.decodeList<GetServiceTemplateSpecContainerEnv>(
          map['envs'],
          (value) => GetServiceTemplateSpecContainerEnv.fromMap(
              (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      livenessProbes:
          Input.decodeList<GetServiceTemplateSpecContainerLivenessProbe>(
              map['livenessProbes'],
              (value) => GetServiceTemplateSpecContainerLivenessProbe.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      ports: Input.decodeList<GetServiceTemplateSpecContainerPort>(
          map['ports'],
          (value) => GetServiceTemplateSpecContainerPort.fromMap(
              (value as Map).cast<String, dynamic>())),
      readinessProbes:
          Input.decodeList<GetServiceTemplateSpecContainerReadinessProbe>(
              map['readinessProbes'],
              (value) => GetServiceTemplateSpecContainerReadinessProbe.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resources: Input.decodeList<GetServiceTemplateSpecContainerResource>(
          map['resources'],
          (value) => GetServiceTemplateSpecContainerResource.fromMap(
              (value as Map).cast<String, dynamic>())),
      startupProbes:
          Input.decodeList<GetServiceTemplateSpecContainerStartupProbe>(
              map['startupProbes'],
              (value) => GetServiceTemplateSpecContainerStartupProbe.fromMap(
                  (value as Map).cast<String, dynamic>())),
      volumeMounts:
          Input.decodeList<GetServiceTemplateSpecContainerVolumeMount>(
              map['volumeMounts'],
              (value) => GetServiceTemplateSpecContainerVolumeMount.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] as String,
    );
  }
}
