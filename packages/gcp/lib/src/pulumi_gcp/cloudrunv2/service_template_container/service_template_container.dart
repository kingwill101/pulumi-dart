// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_template_container_build_info/service_template_container_build_info.dart';
import '../service_template_container_env/service_template_container_env.dart';
import '../service_template_container_liveness_probe/service_template_container_liveness_probe.dart';
import '../service_template_container_ports/service_template_container_ports.dart';
import '../service_template_container_resources/service_template_container_resources.dart';
import '../service_template_container_source_code/service_template_container_source_code.dart';
import '../service_template_container_startup_probe/service_template_container_startup_probe.dart';
import '../service_template_container_volume_mount/service_template_container_volume_mount.dart';

class ServiceTemplateContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final List<String>? args;

  /// Base image for this container. If set, it indicates that the service is enrolled into automatic base image update.
  final String? baseImageUri;

  /// (Output)
  /// The build info of the container image.
  /// Structure is documented below.
  final List<ServiceTemplateContainerBuildInfo>? buildInfos;

  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final List<String>? commands;

  /// Containers which should be started before this container. If specified the container will wait to start until all containers with the listed names are healthy.
  final List<String>? dependsOns;

  /// List of environment variables to set in the container.
  /// Structure is documented below.
  final List<ServiceTemplateContainerEnv>? envs;

  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final String image;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// Structure is documented below.
  final ServiceTemplateContainerLivenessProbe? livenessProbe;

  /// Name of the container specified as a DNS_LABEL.
  final String? name;

  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  /// If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on
  /// Structure is documented below.
  final ServiceTemplateContainerPorts? ports;

  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// Structure is documented below.
  final ServiceTemplateContainerResources? resources;

  /// Location of the source.
  /// Structure is documented below.
  final ServiceTemplateContainerSourceCode? sourceCode;

  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// Structure is documented below.
  final ServiceTemplateContainerStartupProbe? startupProbe;

  /// Volume to mount into the container's filesystem.
  /// Structure is documented below.
  final List<ServiceTemplateContainerVolumeMount>? volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final String? workingDir;

  ServiceTemplateContainer({
    this.args,
    this.baseImageUri,
    this.buildInfos,
    this.commands,
    this.dependsOns,
    this.envs,
    required this.image,
    this.livenessProbe,
    this.name,
    this.ports,
    this.resources,
    this.sourceCode,
    this.startupProbe,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final baseImageUriValue = baseImageUri;
    if (baseImageUriValue != null) {
      map['baseImageUri'] = baseImageUriValue;
    }
    final buildInfosValue = buildInfos;
    if (buildInfosValue != null) {
      map['buildInfos'] = Input.encodeList<ServiceTemplateContainerBuildInfo,
          Map<String, dynamic>>(buildInfosValue, (value) => value.toMap());
    }
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = commandsValue;
    }
    final dependsOnsValue = dependsOns;
    if (dependsOnsValue != null) {
      map['dependsOns'] = dependsOnsValue;
    }
    final envsValue = envs;
    if (envsValue != null) {
      map['envs'] =
          Input.encodeList<ServiceTemplateContainerEnv, Map<String, dynamic>>(
              envsValue, (value) => value.toMap());
    }
    map['image'] = image;
    final livenessProbeValue = livenessProbe;
    if (livenessProbeValue != null) {
      map['livenessProbe'] = livenessProbeValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final portsValue = ports;
    if (portsValue != null) {
      map['ports'] = portsValue.toMap();
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue.toMap();
    }
    final sourceCodeValue = sourceCode;
    if (sourceCodeValue != null) {
      map['sourceCode'] = sourceCodeValue.toMap();
    }
    final startupProbeValue = startupProbe;
    if (startupProbeValue != null) {
      map['startupProbe'] = startupProbeValue.toMap();
    }
    final volumeMountsValue = volumeMounts;
    if (volumeMountsValue != null) {
      map['volumeMounts'] = Input.encodeList<
          ServiceTemplateContainerVolumeMount,
          Map<String, dynamic>>(volumeMountsValue, (value) => value.toMap());
    }
    final workingDirValue = workingDir;
    if (workingDirValue != null) {
      map['workingDir'] = workingDirValue;
    }
    return map;
  }

  factory ServiceTemplateContainer.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      baseImageUri:
          map['baseImageUri'] == null ? null : map['baseImageUri'] as String,
      buildInfos: map['buildInfos'] == null
          ? null
          : Input.decodeList<ServiceTemplateContainerBuildInfo>(
              map['buildInfos'],
              (value) => ServiceTemplateContainerBuildInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      dependsOns: map['dependsOns'] == null
          ? null
          : (map['dependsOns'] as List).cast<String>(),
      envs: map['envs'] == null
          ? null
          : Input.decodeList<ServiceTemplateContainerEnv>(
              map['envs'],
              (value) => ServiceTemplateContainerEnv.fromMap(
                  (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      livenessProbe: map['livenessProbe'] == null
          ? null
          : ServiceTemplateContainerLivenessProbe.fromMap(
              (map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null
          ? null
          : ServiceTemplateContainerPorts.fromMap(
              (map['ports'] as Map).cast<String, dynamic>()),
      resources: map['resources'] == null
          ? null
          : ServiceTemplateContainerResources.fromMap(
              (map['resources'] as Map).cast<String, dynamic>()),
      sourceCode: map['sourceCode'] == null
          ? null
          : ServiceTemplateContainerSourceCode.fromMap(
              (map['sourceCode'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null
          ? null
          : ServiceTemplateContainerStartupProbe.fromMap(
              (map['startupProbe'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null
          ? null
          : Input.decodeList<ServiceTemplateContainerVolumeMount>(
              map['volumeMounts'],
              (value) => ServiceTemplateContainerVolumeMount.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workingDir:
          map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}
