// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_port.dart';
import 'env_from_source.dart';
import 'env_var.dart';
import 'probe.dart';
import 'resource_requirements.dart';
import 'security_context.dart';
import 'volume_mount.dart';

/// A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments may be supplied by the system to the container at runtime.
class Container {
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

  /// Creates a new [Container].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [command] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [env] List of environment variables to set in the container. EnvVar with duplicate names are generally allowed; if referencing a secret, the name must be unique for the container. For non-secret EnvVar names, the Container will only get the last-declared one.
  /// [envFrom] Not supported by Cloud Run.
  /// [image] Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  /// [imagePullPolicy] Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise.
  /// [livenessProbe] Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// [name] Name of the container specified as a DNS_LABEL (RFC 1123).
  /// [ports] List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  /// [readinessProbe] Not supported by Cloud Run.
  /// [resources] Compute Resources required by this container.
  /// [securityContext] Not supported by Cloud Run.
  /// [startupProbe] Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not receive traffic if the probe fails. If not provided, a default startup probe with TCP socket action is used.
  /// [terminationMessagePath] Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log.
  /// [terminationMessagePolicy] Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  /// [volumeMounts] Volume to mount into the container's filesystem. Only supports SecretVolumeSources. Pod volumes to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  Container({
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
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'env': ?env == null ? null : pulumi.Input.encodeList<EnvVar, Map<String, dynamic>>(env!, (value) => value.toMap()),
      'envFrom': ?envFrom == null ? null : pulumi.Input.encodeList<EnvFromSource, Map<String, dynamic>>(envFrom!, (value) => value.toMap()),
      'image': image,
      'imagePullPolicy': ?imagePullPolicy,
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'name': ?name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<ContainerPort, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'readinessProbe': ?readinessProbe == null ? null : readinessProbe!.toMap(),
      'resources': ?resources == null ? null : resources!.toMap(),
      'securityContext': ?securityContext == null ? null : securityContext!.toMap(),
      'startupProbe': ?startupProbe == null ? null : startupProbe!.toMap(),
      'terminationMessagePath': ?terminationMessagePath,
      'terminationMessagePolicy': ?terminationMessagePolicy,
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'workingDir': ?workingDir,
    };
  }

  factory Container.fromMap(Map<String, dynamic> map) {
    return Container(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      env: map['env'] == null ? null : pulumi.Input.decodeList<EnvVar>(map['env'], (value) => EnvVar.fromMap((value as Map).cast<String, dynamic>())),
      envFrom: map['envFrom'] == null ? null : pulumi.Input.decodeList<EnvFromSource>(map['envFrom'], (value) => EnvFromSource.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] == null ? null : map['imagePullPolicy'] as String,
      livenessProbe: map['livenessProbe'] == null ? null : Probe.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<ContainerPort>(map['ports'], (value) => ContainerPort.fromMap((value as Map).cast<String, dynamic>())),
      readinessProbe: map['readinessProbe'] == null ? null : Probe.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>()),
      resources: map['resources'] == null ? null : ResourceRequirements.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      securityContext: map['securityContext'] == null ? null : SecurityContext.fromMap((map['securityContext'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null ? null : Probe.fromMap((map['startupProbe'] as Map).cast<String, dynamic>()),
      terminationMessagePath: map['terminationMessagePath'] == null ? null : map['terminationMessagePath'] as String,
      terminationMessagePolicy: map['terminationMessagePolicy'] == null ? null : map['terminationMessagePolicy'] as String,
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMount>(map['volumeMounts'], (value) => VolumeMount.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

