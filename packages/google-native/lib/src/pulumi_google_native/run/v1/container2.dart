// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'container_port.dart';
import 'env_from_source.dart';
import 'env_var.dart';
import 'probe.dart';
import 'resource_requirements.dart';
import 'security_context.dart';
import 'volume_mount.dart';

/// A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments may be supplied by the system to the container at runtime.
class Container2 {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final List<String>? args;

  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references are not supported in Cloud Run.
  final List<String>? command;

  /// List of environment variables to set in the container. EnvVar with duplicate names are generally allowed; if referencing a secret, the name must be unique for the container. For non-secret EnvVar names, the Container will only get the last-declared one.
  final List<EnvVar>? env;

  /// Not supported by Cloud Run.
  final List<EnvFromSource>? envFrom;

  /// Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  final String image;

  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise.
  final String? imagePullPolicy;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final Probe? livenessProbe;

  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  final String? name;

  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  final List<ContainerPort>? ports;

  /// Not supported by Cloud Run.
  final Probe? readinessProbe;

  /// Compute Resources required by this container.
  final ResourceRequirements? resources;

  /// Not supported by Cloud Run.
  final SecurityContext? securityContext;

  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not receive traffic if the probe fails. If not provided, a default startup probe with TCP socket action is used.
  final Probe? startupProbe;

  /// Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log.
  final String? terminationMessagePath;

  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final String? terminationMessagePolicy;

  /// Volume to mount into the container's filesystem. Only supports SecretVolumeSources. Pod volumes to mount into the container's filesystem.
  final List<VolumeMount>? volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final String? workingDir;

  Container2({
    this.args,
    this.command,
    this.env,
    this.envFrom,
    required this.image,
    this.imagePullPolicy,
    this.livenessProbe,
    this.name,
    this.ports,
    this.readinessProbe,
    this.resources,
    this.securityContext,
    this.startupProbe,
    this.terminationMessagePath,
    this.terminationMessagePolicy,
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
    final envValue = env;
    if (envValue != null) {
      map['env'] = Input.encodeList<EnvVar, Map<String, dynamic>>(
          envValue, (value) => value.toMap());
    }
    final envFromValue = envFrom;
    if (envFromValue != null) {
      map['envFrom'] = Input.encodeList<EnvFromSource, Map<String, dynamic>>(
          envFromValue, (value) => value.toMap());
    }
    map['image'] = image;
    final imagePullPolicyValue = imagePullPolicy;
    if (imagePullPolicyValue != null) {
      map['imagePullPolicy'] = imagePullPolicyValue;
    }
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
      map['ports'] = Input.encodeList<ContainerPort, Map<String, dynamic>>(
          portsValue, (value) => value.toMap());
    }
    final readinessProbeValue = readinessProbe;
    if (readinessProbeValue != null) {
      map['readinessProbe'] = readinessProbeValue.toMap();
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue.toMap();
    }
    final securityContextValue = securityContext;
    if (securityContextValue != null) {
      map['securityContext'] = securityContextValue.toMap();
    }
    final startupProbeValue = startupProbe;
    if (startupProbeValue != null) {
      map['startupProbe'] = startupProbeValue.toMap();
    }
    final terminationMessagePathValue = terminationMessagePath;
    if (terminationMessagePathValue != null) {
      map['terminationMessagePath'] = terminationMessagePathValue;
    }
    final terminationMessagePolicyValue = terminationMessagePolicy;
    if (terminationMessagePolicyValue != null) {
      map['terminationMessagePolicy'] = terminationMessagePolicyValue;
    }
    final volumeMountsValue = volumeMounts;
    if (volumeMountsValue != null) {
      map['volumeMounts'] = Input.encodeList<VolumeMount, Map<String, dynamic>>(
          volumeMountsValue, (value) => value.toMap());
    }
    final workingDirValue = workingDir;
    if (workingDirValue != null) {
      map['workingDir'] = workingDirValue;
    }
    return map;
  }

  factory Container2.fromMap(Map<String, dynamic> map) {
    return Container2(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null
          ? null
          : (map['command'] as List).cast<String>(),
      env: map['env'] == null
          ? null
          : Input.decodeList<EnvVar>(
              map['env'],
              (value) =>
                  EnvVar.fromMap((value as Map).cast<String, dynamic>())),
      envFrom: map['envFrom'] == null
          ? null
          : Input.decodeList<EnvFromSource>(
              map['envFrom'],
              (value) => EnvFromSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] == null
          ? null
          : map['imagePullPolicy'] as String,
      livenessProbe: map['livenessProbe'] == null
          ? null
          : Probe.fromMap(
              (map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null
          ? null
          : Input.decodeList<ContainerPort>(
              map['ports'],
              (value) => ContainerPort.fromMap(
                  (value as Map).cast<String, dynamic>())),
      readinessProbe: map['readinessProbe'] == null
          ? null
          : Probe.fromMap(
              (map['readinessProbe'] as Map).cast<String, dynamic>()),
      resources: map['resources'] == null
          ? null
          : ResourceRequirements.fromMap(
              (map['resources'] as Map).cast<String, dynamic>()),
      securityContext: map['securityContext'] == null
          ? null
          : SecurityContext.fromMap(
              (map['securityContext'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null
          ? null
          : Probe.fromMap((map['startupProbe'] as Map).cast<String, dynamic>()),
      terminationMessagePath: map['terminationMessagePath'] == null
          ? null
          : map['terminationMessagePath'] as String,
      terminationMessagePolicy: map['terminationMessagePolicy'] == null
          ? null
          : map['terminationMessagePolicy'] as String,
      volumeMounts: map['volumeMounts'] == null
          ? null
          : Input.decodeList<VolumeMount>(
              map['volumeMounts'],
              (value) =>
                  VolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      workingDir:
          map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}
