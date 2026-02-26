// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_run_v2_container_port_response.dart';
import 'google_cloud_run_v2_env_var_response.dart';
import 'google_cloud_run_v2_probe_response.dart';
import 'google_cloud_run_v2_resource_requirements_response.dart';
import 'google_cloud_run_v2_volume_mount_response.dart';

/// A single application container. This specifies both the container to run, the command to run in the container and the arguments to supply to it. Note that additional arguments can be supplied by the system to the container at runtime.
class GoogleCloudRunV2ContainerResponse {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided.
  final List<String> args;

  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided.
  final List<String> command;

  /// Names of the containers that must start before this container.
  final List<String> dependsOn;

  /// List of environment variables to set in the container.
  final List<GoogleCloudRunV2EnvVarResponse> env;

  /// Name of the container image in Dockerhub, Google Artifact Registry, or Google Container Registry. If the host is not provided, Dockerhub is assumed.
  final String image;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final GoogleCloudRunV2ProbeResponse livenessProbe;

  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  final String name;

  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible. If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on.
  final List<GoogleCloudRunV2ContainerPortResponse> ports;

  /// Compute Resource requirements by this container.
  final GoogleCloudRunV2ResourceRequirementsResponse resources;

  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  final GoogleCloudRunV2ProbeResponse startupProbe;

  /// Volume to mount into the container's filesystem.
  final List<GoogleCloudRunV2VolumeMountResponse> volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final String workingDir;

  GoogleCloudRunV2ContainerResponse({
    required this.args,
    required this.command,
    required this.dependsOn,
    required this.env,
    required this.image,
    required this.livenessProbe,
    required this.name,
    required this.ports,
    required this.resources,
    required this.startupProbe,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['command'] = command;
    map['dependsOn'] = dependsOn;
    map['env'] =
        Input.encodeList<GoogleCloudRunV2EnvVarResponse, Map<String, dynamic>>(
            env, (value) => value.toMap());
    map['image'] = image;
    map['livenessProbe'] = livenessProbe.toMap();
    map['name'] = name;
    map['ports'] = Input.encodeList<GoogleCloudRunV2ContainerPortResponse,
        Map<String, dynamic>>(ports, (value) => value.toMap());
    map['resources'] = resources.toMap();
    map['startupProbe'] = startupProbe.toMap();
    map['volumeMounts'] = Input.encodeList<GoogleCloudRunV2VolumeMountResponse,
        Map<String, dynamic>>(volumeMounts, (value) => value.toMap());
    map['workingDir'] = workingDir;
    return map;
  }

  factory GoogleCloudRunV2ContainerResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2ContainerResponse(
      args: (map['args'] as List).cast<String>(),
      command: (map['command'] as List).cast<String>(),
      dependsOn: (map['dependsOn'] as List).cast<String>(),
      env: Input.decodeList<GoogleCloudRunV2EnvVarResponse>(
          map['env'],
          (value) => GoogleCloudRunV2EnvVarResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      livenessProbe: GoogleCloudRunV2ProbeResponse.fromMap(
          (map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      ports: Input.decodeList<GoogleCloudRunV2ContainerPortResponse>(
          map['ports'],
          (value) => GoogleCloudRunV2ContainerPortResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      resources: GoogleCloudRunV2ResourceRequirementsResponse.fromMap(
          (map['resources'] as Map).cast<String, dynamic>()),
      startupProbe: GoogleCloudRunV2ProbeResponse.fromMap(
          (map['startupProbe'] as Map).cast<String, dynamic>()),
      volumeMounts: Input.decodeList<GoogleCloudRunV2VolumeMountResponse>(
          map['volumeMounts'],
          (value) => GoogleCloudRunV2VolumeMountResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] as String,
    );
  }
}
