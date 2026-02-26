// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_job_template_template_container_env/get_job_template_template_container_env.dart';
import '../get_job_template_template_container_port/get_job_template_template_container_port.dart';
import '../get_job_template_template_container_resource/get_job_template_template_container_resource.dart';
import '../get_job_template_template_container_startup_probe/get_job_template_template_container_startup_probe.dart';
import '../get_job_template_template_container_volume_mount/get_job_template_template_container_volume_mount.dart';

class GetJobTemplateTemplateContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final List<String> args;

  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final List<String> commands;

  /// Names of the containers that must start before this container.
  final List<String> dependsOns;

  /// List of environment variables to set in the container.
  final List<GetJobTemplateTemplateContainerEnv> envs;

  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final String image;

  /// The name of the Cloud Run v2 Job.
  final String name;

  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  ///
  /// If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on
  final List<GetJobTemplateTemplateContainerPort> ports;

  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  final List<GetJobTemplateTemplateContainerResource> resources;

  /// Startup probe of application within the container.
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not be added to service endpoints if the probe fails.
  final List<GetJobTemplateTemplateContainerStartupProbe> startupProbes;

  /// Volume to mount into the container's filesystem.
  final List<GetJobTemplateTemplateContainerVolumeMount> volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final String workingDir;

  GetJobTemplateTemplateContainer({
    required this.args,
    required this.commands,
    required this.dependsOns,
    required this.envs,
    required this.image,
    required this.name,
    required this.ports,
    required this.resources,
    required this.startupProbes,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['commands'] = commands;
    map['dependsOns'] = dependsOns;
    map['envs'] = Input.encodeList<GetJobTemplateTemplateContainerEnv,
        Map<String, dynamic>>(envs, (value) => value.toMap());
    map['image'] = image;
    map['name'] = name;
    map['ports'] = Input.encodeList<GetJobTemplateTemplateContainerPort,
        Map<String, dynamic>>(ports, (value) => value.toMap());
    map['resources'] = Input.encodeList<GetJobTemplateTemplateContainerResource,
        Map<String, dynamic>>(resources, (value) => value.toMap());
    map['startupProbes'] = Input.encodeList<
        GetJobTemplateTemplateContainerStartupProbe,
        Map<String, dynamic>>(startupProbes, (value) => value.toMap());
    map['volumeMounts'] = Input.encodeList<
        GetJobTemplateTemplateContainerVolumeMount,
        Map<String, dynamic>>(volumeMounts, (value) => value.toMap());
    map['workingDir'] = workingDir;
    return map;
  }

  factory GetJobTemplateTemplateContainer.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainer(
      args: (map['args'] as List).cast<String>(),
      commands: (map['commands'] as List).cast<String>(),
      dependsOns: (map['dependsOns'] as List).cast<String>(),
      envs: Input.decodeList<GetJobTemplateTemplateContainerEnv>(
          map['envs'],
          (value) => GetJobTemplateTemplateContainerEnv.fromMap(
              (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      name: map['name'] as String,
      ports: Input.decodeList<GetJobTemplateTemplateContainerPort>(
          map['ports'],
          (value) => GetJobTemplateTemplateContainerPort.fromMap(
              (value as Map).cast<String, dynamic>())),
      resources: Input.decodeList<GetJobTemplateTemplateContainerResource>(
          map['resources'],
          (value) => GetJobTemplateTemplateContainerResource.fromMap(
              (value as Map).cast<String, dynamic>())),
      startupProbes:
          Input.decodeList<GetJobTemplateTemplateContainerStartupProbe>(
              map['startupProbes'],
              (value) => GetJobTemplateTemplateContainerStartupProbe.fromMap(
                  (value as Map).cast<String, dynamic>())),
      volumeMounts:
          Input.decodeList<GetJobTemplateTemplateContainerVolumeMount>(
              map['volumeMounts'],
              (value) => GetJobTemplateTemplateContainerVolumeMount.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] as String,
    );
  }
}
