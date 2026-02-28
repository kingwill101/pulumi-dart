// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_container_port.dart';
import 'google_cloud_run_v2_env_var.dart';
import 'google_cloud_run_v2_probe.dart';
import 'google_cloud_run_v2_resource_requirements.dart';
import 'google_cloud_run_v2_volume_mount.dart';

/// A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments can be supplied by the system to the container at runtime.
class GoogleCloudRunV2Container {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  final List<String>? args;

  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  final List<String>? command;

  /// Names of the containers that must start before this container.
  final List<String>? dependsOn;

  /// List of environment variables to set in the container.
  final List<GoogleCloudRunV2EnvVar>? env;

  /// Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  final String image;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final GoogleCloudRunV2Probe? livenessProbe;

  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  final String? name;

  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  final List<GoogleCloudRunV2ContainerPort>? ports;

  /// Compute Resource requirements by this container.
  final GoogleCloudRunV2ResourceRequirements? resources;

  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  final GoogleCloudRunV2Probe? startupProbe;

  /// Volume to mount into the container's filesystem.
  final List<GoogleCloudRunV2VolumeMount>? volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final String? workingDir;

  /// Creates a new [GoogleCloudRunV2Container].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  /// [command] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  /// [dependsOn] Names of the containers that must start before this container.
  /// [env] List of environment variables to set in the container.
  /// [image] Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// [name] Name of the container specified as a DNS_LABEL (RFC 1123).
  /// [ports] List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  /// [resources] Compute Resource requirements by this container.
  /// [startupProbe] Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  GoogleCloudRunV2Container({
    this.args,
    this.command,
    this.dependsOn,
    this.env,
    required this.image,
    this.livenessProbe,
    this.name,
    this.ports,
    this.resources,
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
    final commandValue = command;
    if (commandValue != null) {
      map['command'] = commandValue;
    }
    final dependsOnValue = dependsOn;
    if (dependsOnValue != null) {
      map['dependsOn'] = dependsOnValue;
    }
    final envValue = env;
    if (envValue != null) {
      map['env'] =
          pulumi.Input.encodeList<GoogleCloudRunV2EnvVar, Map<String, dynamic>>(
              envValue, (value) => value.toMap());
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
      map['ports'] = pulumi.Input.encodeList<GoogleCloudRunV2ContainerPort,
          Map<String, dynamic>>(portsValue, (value) => value.toMap());
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue.toMap();
    }
    final startupProbeValue = startupProbe;
    if (startupProbeValue != null) {
      map['startupProbe'] = startupProbeValue.toMap();
    }
    final volumeMountsValue = volumeMounts;
    if (volumeMountsValue != null) {
      map['volumeMounts'] = pulumi.Input.encodeList<GoogleCloudRunV2VolumeMount,
          Map<String, dynamic>>(volumeMountsValue, (value) => value.toMap());
    }
    final workingDirValue = workingDir;
    if (workingDirValue != null) {
      map['workingDir'] = workingDirValue;
    }
    return map;
  }

  factory GoogleCloudRunV2Container.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2Container(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null
          ? null
          : (map['command'] as List).cast<String>(),
      dependsOn: map['dependsOn'] == null
          ? null
          : (map['dependsOn'] as List).cast<String>(),
      env: map['env'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudRunV2EnvVar>(
              map['env'],
              (value) => GoogleCloudRunV2EnvVar.fromMap(
                  (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      livenessProbe: map['livenessProbe'] == null
          ? null
          : GoogleCloudRunV2Probe.fromMap(
              (map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudRunV2ContainerPort>(
              map['ports'],
              (value) => GoogleCloudRunV2ContainerPort.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null
          ? null
          : GoogleCloudRunV2ResourceRequirements.fromMap(
              (map['resources'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null
          ? null
          : GoogleCloudRunV2Probe.fromMap(
              (map['startupProbe'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudRunV2VolumeMount>(
              map['volumeMounts'],
              (value) => GoogleCloudRunV2VolumeMount.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workingDir:
          map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}
