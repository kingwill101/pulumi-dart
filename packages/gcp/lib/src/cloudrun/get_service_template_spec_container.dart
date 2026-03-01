// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_env.dart';
import 'get_service_template_spec_container_env_from.dart';
import 'get_service_template_spec_container_liveness_probe.dart';
import 'get_service_template_spec_container_port.dart';
import 'get_service_template_spec_container_readiness_probe.dart';
import 'get_service_template_spec_container_resource.dart';
import 'get_service_template_spec_container_startup_probe.dart';
import 'get_service_template_spec_container_volume_mount.dart';

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

  /// Creates a new [GetServiceTemplateSpecContainer].
  /// [args] Arguments to the entrypoint.
  /// [commands] Entrypoint array. Not executed within a shell.
  /// [envFroms] List of sources to populate environment variables in the container.
  /// [envs] List of environment variables to set in the container.
  /// [image] Docker image name. This is most often a reference to a container located
  /// [livenessProbes] Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// [name] The name of the Cloud Run Service.
  /// [ports] List of open ports in the container.
  /// [readinessProbes] Periodic probe of container readiness.
  /// [resources] Compute Resources required by this container. Used to set values such as max memory
  /// [startupProbes] Startup probe of application within the container.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory.
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
    return <String, dynamic>{
      'args': args,
      'commands': commands,
      'envFroms':
          pulumi.Input.encodeList<
            GetServiceTemplateSpecContainerEnvFrom,
            Map<String, dynamic>
          >(envFroms, (value) => value.toMap()),
      'envs':
          pulumi.Input.encodeList<
            GetServiceTemplateSpecContainerEnv,
            Map<String, dynamic>
          >(envs, (value) => value.toMap()),
      'image': image,
      'livenessProbes':
          pulumi.Input.encodeList<
            GetServiceTemplateSpecContainerLivenessProbe,
            Map<String, dynamic>
          >(livenessProbes, (value) => value.toMap()),
      'name': name,
      'ports':
          pulumi.Input.encodeList<
            GetServiceTemplateSpecContainerPort,
            Map<String, dynamic>
          >(ports, (value) => value.toMap()),
      'readinessProbes':
          pulumi.Input.encodeList<
            GetServiceTemplateSpecContainerReadinessProbe,
            Map<String, dynamic>
          >(readinessProbes, (value) => value.toMap()),
      'resources':
          pulumi.Input.encodeList<
            GetServiceTemplateSpecContainerResource,
            Map<String, dynamic>
          >(resources, (value) => value.toMap()),
      'startupProbes':
          pulumi.Input.encodeList<
            GetServiceTemplateSpecContainerStartupProbe,
            Map<String, dynamic>
          >(startupProbes, (value) => value.toMap()),
      'volumeMounts':
          pulumi.Input.encodeList<
            GetServiceTemplateSpecContainerVolumeMount,
            Map<String, dynamic>
          >(volumeMounts, (value) => value.toMap()),
      'workingDir': workingDir,
    };
  }

  factory GetServiceTemplateSpecContainer.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainer(
      args: (map['args'] as List).cast<String>(),
      commands: (map['commands'] as List).cast<String>(),
      envFroms: pulumi.Input.decodeList<GetServiceTemplateSpecContainerEnvFrom>(
        map['envFroms'],
        (value) => GetServiceTemplateSpecContainerEnvFrom.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      envs: pulumi.Input.decodeList<GetServiceTemplateSpecContainerEnv>(
        map['envs'],
        (value) => GetServiceTemplateSpecContainerEnv.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      image: map['image'] as String,
      livenessProbes:
          pulumi.Input.decodeList<GetServiceTemplateSpecContainerLivenessProbe>(
            map['livenessProbes'],
            (value) => GetServiceTemplateSpecContainerLivenessProbe.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      ports: pulumi.Input.decodeList<GetServiceTemplateSpecContainerPort>(
        map['ports'],
        (value) => GetServiceTemplateSpecContainerPort.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      readinessProbes:
          pulumi
              .Input.decodeList<GetServiceTemplateSpecContainerReadinessProbe>(
            map['readinessProbes'],
            (value) => GetServiceTemplateSpecContainerReadinessProbe.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      resources:
          pulumi.Input.decodeList<GetServiceTemplateSpecContainerResource>(
            map['resources'],
            (value) => GetServiceTemplateSpecContainerResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      startupProbes:
          pulumi.Input.decodeList<GetServiceTemplateSpecContainerStartupProbe>(
            map['startupProbes'],
            (value) => GetServiceTemplateSpecContainerStartupProbe.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      volumeMounts:
          pulumi.Input.decodeList<GetServiceTemplateSpecContainerVolumeMount>(
            map['volumeMounts'],
            (value) => GetServiceTemplateSpecContainerVolumeMount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      workingDir: map['workingDir'] as String,
    );
  }
}
