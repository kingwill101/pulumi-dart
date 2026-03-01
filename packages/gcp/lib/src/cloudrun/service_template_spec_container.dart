// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_env.dart';
import 'service_template_spec_container_env_from.dart';
import 'service_template_spec_container_liveness_probe.dart';
import 'service_template_spec_container_port.dart';
import 'service_template_spec_container_readiness_probe.dart';
import 'service_template_spec_container_resources.dart';
import 'service_template_spec_container_startup_probe.dart';
import 'service_template_spec_container_volume_mount.dart';

class ServiceTemplateSpecContainer {
  /// Arguments to the entrypoint.
  /// The docker image's CMD is used if this is not provided.
  final List<String>? args;

  /// Entrypoint array. Not executed within a shell.
  /// The docker image's ENTRYPOINT is used if this is not provided.
  final List<String>? commands;

  /// (Optional, Deprecated)
  /// List of sources to populate environment variables in the container.
  /// All invalid keys will be reported as an event when the container is starting.
  /// When a key exists in multiple sources, the value associated with the last source will
  /// take precedence. Values defined by an Env with a duplicate key will take
  /// precedence.
  /// Structure is documented below.
  ///
  /// > **Warning:** `env_from` is deprecated and will be removed in a future major release. This field is not supported by the Cloud Run API.
  final List<ServiceTemplateSpecContainerEnvFrom>? envFroms;

  /// List of environment variables to set in the container.
  /// Structure is documented below.
  final List<ServiceTemplateSpecContainerEnv>? envs;

  /// Docker image name. This is most often a reference to a container located
  /// in the container registry, such as gcr.io/cloudrun/hello
  final String image;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails. More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// Structure is documented below.
  final ServiceTemplateSpecContainerLivenessProbe? livenessProbe;

  /// Name of the container
  final String? name;

  /// List of open ports in the container.
  /// Structure is documented below.
  final List<ServiceTemplateSpecContainerPort>? ports;

  /// Periodic probe of container readiness.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerReadinessProbe? readinessProbe;

  /// Compute Resources required by this container. Used to set values such as max memory
  /// Structure is documented below.
  final ServiceTemplateSpecContainerResources? resources;

  /// Startup probe of application within the container.
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not be added to service endpoints if the probe fails.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerStartupProbe? startupProbe;

  /// Volume to mount into the container's filesystem.
  /// Only supports SecretVolumeSources.
  /// Structure is documented below.
  final List<ServiceTemplateSpecContainerVolumeMount>? volumeMounts;

  /// (Optional, Deprecated)
  /// Container's working directory.
  /// If not specified, the container runtime's default will be used, which
  /// might be configured in the container image.
  ///
  /// > **Warning:** `working_dir` is deprecated and will be removed in a future major release. This field is not supported by the Cloud Run API.
  final String? workingDir;

  /// Creates a new [ServiceTemplateSpecContainer].
  /// [args] Arguments to the entrypoint.
  /// [commands] Entrypoint array. Not executed within a shell.
  /// [envFroms] (Optional, Deprecated)
  /// [envs] List of environment variables to set in the container.
  /// [image] Docker image name. This is most often a reference to a container located
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails. More info:
  /// [name] Name of the container
  /// [ports] List of open ports in the container.
  /// [readinessProbe] Periodic probe of container readiness.
  /// [resources] Compute Resources required by this container. Used to set values such as max memory
  /// [startupProbe] Startup probe of application within the container.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] (Optional, Deprecated)
  ServiceTemplateSpecContainer({
    this.args,
    this.commands,
    this.envFroms,
    this.envs,
    required this.image,
    this.livenessProbe,
    this.name,
    this.ports,
    this.readinessProbe,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'envFroms': ?envFroms == null
          ? null
          : pulumi.Input.encodeList<
              ServiceTemplateSpecContainerEnvFrom,
              Map<String, dynamic>
            >(envFroms!, (value) => value.toMap()),
      'envs': ?envs == null
          ? null
          : pulumi.Input.encodeList<
              ServiceTemplateSpecContainerEnv,
              Map<String, dynamic>
            >(envs!, (value) => value.toMap()),
      'image': image,
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'name': ?name,
      'ports': ?ports == null
          ? null
          : pulumi.Input.encodeList<
              ServiceTemplateSpecContainerPort,
              Map<String, dynamic>
            >(ports!, (value) => value.toMap()),
      'readinessProbe': ?readinessProbe == null
          ? null
          : readinessProbe!.toMap(),
      'resources': ?resources == null ? null : resources!.toMap(),
      'startupProbe': ?startupProbe == null ? null : startupProbe!.toMap(),
      'volumeMounts': ?volumeMounts == null
          ? null
          : pulumi.Input.encodeList<
              ServiceTemplateSpecContainerVolumeMount,
              Map<String, dynamic>
            >(volumeMounts!, (value) => value.toMap()),
      'workingDir': ?workingDir,
    };
  }

  factory ServiceTemplateSpecContainer.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      envFroms: map['envFroms'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTemplateSpecContainerEnvFrom>(
              map['envFroms'],
              (value) => ServiceTemplateSpecContainerEnvFrom.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      envs: map['envs'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTemplateSpecContainerEnv>(
              map['envs'],
              (value) => ServiceTemplateSpecContainerEnv.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      image: map['image'] as String,
      livenessProbe: map['livenessProbe'] == null
          ? null
          : ServiceTemplateSpecContainerLivenessProbe.fromMap(
              (map['livenessProbe'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTemplateSpecContainerPort>(
              map['ports'],
              (value) => ServiceTemplateSpecContainerPort.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      readinessProbe: map['readinessProbe'] == null
          ? null
          : ServiceTemplateSpecContainerReadinessProbe.fromMap(
              (map['readinessProbe'] as Map).cast<String, dynamic>(),
            ),
      resources: map['resources'] == null
          ? null
          : ServiceTemplateSpecContainerResources.fromMap(
              (map['resources'] as Map).cast<String, dynamic>(),
            ),
      startupProbe: map['startupProbe'] == null
          ? null
          : ServiceTemplateSpecContainerStartupProbe.fromMap(
              (map['startupProbe'] as Map).cast<String, dynamic>(),
            ),
      volumeMounts: map['volumeMounts'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTemplateSpecContainerVolumeMount>(
              map['volumeMounts'],
              (value) => ServiceTemplateSpecContainerVolumeMount.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      workingDir: map['workingDir'] == null
          ? null
          : map['workingDir'] as String,
    );
  }
}
