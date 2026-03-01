// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_container_env.dart';
import 'worker_pool_template_container_liveness_probe.dart';
import 'worker_pool_template_container_resources.dart';
import 'worker_pool_template_container_startup_probe.dart';
import 'worker_pool_template_container_volume_mount.dart';

class WorkerPoolTemplateContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final List<String>? args;
  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final List<String>? commands;
  /// Names of the containers that must start before this container.
  final List<String>? dependsOns;
  /// List of environment variables to set in the container.
  /// Structure is documented below.
  final List<WorkerPoolTemplateContainerEnv>? envs;
  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final String image;
  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// Structure is documented below.
  final WorkerPoolTemplateContainerLivenessProbe? livenessProbe;
  /// Name of the container specified as a DNS_LABEL.
  final String? name;
  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// Structure is documented below.
  final WorkerPoolTemplateContainerResources? resources;
  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  /// Structure is documented below.
  final WorkerPoolTemplateContainerStartupProbe? startupProbe;
  /// Volume to mount into the container's filesystem.
  /// Structure is documented below.
  final List<WorkerPoolTemplateContainerVolumeMount>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final String? workingDir;

  /// Creates a new [WorkerPoolTemplateContainer].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [commands] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [dependsOns] Names of the containers that must start before this container.
  /// [envs] List of environment variables to set in the container.
  /// [image] URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// [name] Name of the container specified as a DNS_LABEL.
  /// [resources] Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// [startupProbe] Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  WorkerPoolTemplateContainer({
    this.args,
    this.commands,
    this.dependsOns,
    this.envs,
    required this.image,
    this.livenessProbe,
    this.name,
    this.resources,
    this.startupProbe,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'dependsOns': ?dependsOns,
      'envs': ?envs == null ? null : pulumi.Input.encodeList<WorkerPoolTemplateContainerEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'image': image,
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'name': ?name,
      'resources': ?resources == null ? null : resources!.toMap(),
      'startupProbe': ?startupProbe == null ? null : startupProbe!.toMap(),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<WorkerPoolTemplateContainerVolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'workingDir': ?workingDir,
    };
  }

  factory WorkerPoolTemplateContainer.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      dependsOns: map['dependsOns'] == null ? null : (map['dependsOns'] as List).cast<String>(),
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<WorkerPoolTemplateContainerEnv>(map['envs'], (value) => WorkerPoolTemplateContainerEnv.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      livenessProbe: map['livenessProbe'] == null ? null : WorkerPoolTemplateContainerLivenessProbe.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      resources: map['resources'] == null ? null : WorkerPoolTemplateContainerResources.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null ? null : WorkerPoolTemplateContainerStartupProbe.fromMap((map['startupProbe'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<WorkerPoolTemplateContainerVolumeMount>(map['volumeMounts'], (value) => WorkerPoolTemplateContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

