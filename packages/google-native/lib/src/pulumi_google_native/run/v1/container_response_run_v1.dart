// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_port_response.dart';
import 'env_from_source_response.dart';
import 'env_var_response.dart';
import 'probe_response.dart';
import 'resource_requirements_response.dart';
import 'security_context_response.dart';
import 'volume_mount_response.dart';

/// A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments may be supplied by the system to the container at runtime.
class ContainerResponseRunV1 {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final List<String> args;

  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references are not supported in Cloud Run.
  final List<String> command;

  /// List of environment variables to set in the container. EnvVar with duplicate names are generally allowed; if referencing a secret, the name must be unique for the container. For non-secret EnvVar names, the Container will only get the last-declared one.
  final List<EnvVarResponse> env;

  /// Not supported by Cloud Run.
  final List<EnvFromSourceResponse> envFrom;

  /// Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  final String image;

  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise.
  final String imagePullPolicy;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final ProbeResponse livenessProbe;

  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  final String name;

  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  final List<ContainerPortResponse> ports;

  /// Not supported by Cloud Run.
  final ProbeResponse readinessProbe;

  /// Compute Resources required by this container.
  final ResourceRequirementsResponse resources;

  /// Not supported by Cloud Run.
  final SecurityContextResponse securityContext;

  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not receive traffic if the probe fails. If not provided, a default startup probe with TCP socket action is used.
  final ProbeResponse startupProbe;

  /// Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log.
  final String terminationMessagePath;

  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final String terminationMessagePolicy;

  /// Volume to mount into the container's filesystem. Only supports SecretVolumeSources. Pod volumes to mount into the container's filesystem.
  final List<VolumeMountResponse> volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final String workingDir;

  ContainerResponseRunV1({
    required this.args,
    required this.command,
    required this.env,
    required this.envFrom,
    required this.image,
    required this.imagePullPolicy,
    required this.livenessProbe,
    required this.name,
    required this.ports,
    required this.readinessProbe,
    required this.resources,
    required this.securityContext,
    required this.startupProbe,
    required this.terminationMessagePath,
    required this.terminationMessagePolicy,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['command'] = command;
    map['env'] = pulumi.Input.encodeList<EnvVarResponse, Map<String, dynamic>>(
        env, (value) => value.toMap());
    map['envFrom'] =
        pulumi.Input.encodeList<EnvFromSourceResponse, Map<String, dynamic>>(
            envFrom, (value) => value.toMap());
    map['image'] = image;
    map['imagePullPolicy'] = imagePullPolicy;
    map['livenessProbe'] = livenessProbe.toMap();
    map['name'] = name;
    map['ports'] =
        pulumi.Input.encodeList<ContainerPortResponse, Map<String, dynamic>>(
            ports, (value) => value.toMap());
    map['readinessProbe'] = readinessProbe.toMap();
    map['resources'] = resources.toMap();
    map['securityContext'] = securityContext.toMap();
    map['startupProbe'] = startupProbe.toMap();
    map['terminationMessagePath'] = terminationMessagePath;
    map['terminationMessagePolicy'] = terminationMessagePolicy;
    map['volumeMounts'] =
        pulumi.Input.encodeList<VolumeMountResponse, Map<String, dynamic>>(
            volumeMounts, (value) => value.toMap());
    map['workingDir'] = workingDir;
    return map;
  }

  factory ContainerResponseRunV1.fromMap(Map<String, dynamic> map) {
    return ContainerResponseRunV1(
      args: (map['args'] as List).cast<String>(),
      command: (map['command'] as List).cast<String>(),
      env: pulumi.Input.decodeList<EnvVarResponse>(
          map['env'],
          (value) =>
              EnvVarResponse.fromMap((value as Map).cast<String, dynamic>())),
      envFrom: pulumi.Input.decodeList<EnvFromSourceResponse>(
          map['envFrom'],
          (value) => EnvFromSourceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] as String,
      livenessProbe: ProbeResponse.fromMap(
          (map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      ports: pulumi.Input.decodeList<ContainerPortResponse>(
          map['ports'],
          (value) => ContainerPortResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      readinessProbe: ProbeResponse.fromMap(
          (map['readinessProbe'] as Map).cast<String, dynamic>()),
      resources: ResourceRequirementsResponse.fromMap(
          (map['resources'] as Map).cast<String, dynamic>()),
      securityContext: SecurityContextResponse.fromMap(
          (map['securityContext'] as Map).cast<String, dynamic>()),
      startupProbe: ProbeResponse.fromMap(
          (map['startupProbe'] as Map).cast<String, dynamic>()),
      terminationMessagePath: map['terminationMessagePath'] as String,
      terminationMessagePolicy: map['terminationMessagePolicy'] as String,
      volumeMounts: pulumi.Input.decodeList<VolumeMountResponse>(
          map['volumeMounts'],
          (value) => VolumeMountResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] as String,
    );
  }
}
