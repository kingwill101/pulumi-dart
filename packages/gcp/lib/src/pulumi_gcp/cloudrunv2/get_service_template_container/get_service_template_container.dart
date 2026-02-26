// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_template_container_build_info/get_service_template_container_build_info.dart';
import '../get_service_template_container_env/get_service_template_container_env.dart';
import '../get_service_template_container_liveness_probe/get_service_template_container_liveness_probe.dart';
import '../get_service_template_container_port/get_service_template_container_port.dart';
import '../get_service_template_container_resource/get_service_template_container_resource.dart';
import '../get_service_template_container_source_code/get_service_template_container_source_code.dart';
import '../get_service_template_container_startup_probe/get_service_template_container_startup_probe.dart';
import '../get_service_template_container_volume_mount/get_service_template_container_volume_mount.dart';

class GetServiceTemplateContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final List<String> args;

  /// Base image for this container. If set, it indicates that the service is enrolled into automatic base image update.
  final String baseImageUri;

  /// The build info of the container image.
  final List<GetServiceTemplateContainerBuildInfo> buildInfos;

  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final List<String> commands;

  /// Containers which should be started before this container. If specified the container will wait to start until all containers with the listed names are healthy.
  final List<String> dependsOns;

  /// List of environment variables to set in the container.
  final List<GetServiceTemplateContainerEnv> envs;

  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final String image;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final List<GetServiceTemplateContainerLivenessProbe> livenessProbes;

  /// The name of the Cloud Run v2 Service.
  final String name;

  /// List of ports to expose from the container. Only a single port can be specified. The specified ports must be listening on all interfaces (0.0.0.0) within the container to be accessible.
  ///
  /// If omitted, a port number will be chosen and passed to the container through the PORT environment variable for the container to listen on
  final List<GetServiceTemplateContainerPort> ports;

  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  final List<GetServiceTemplateContainerResource> resources;

  /// Location of the source.
  final List<GetServiceTemplateContainerSourceCode> sourceCodes;

  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final List<GetServiceTemplateContainerStartupProbe> startupProbes;

  /// Volume to mount into the container's filesystem.
  final List<GetServiceTemplateContainerVolumeMount> volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final String workingDir;

  GetServiceTemplateContainer({
    required this.args,
    required this.baseImageUri,
    required this.buildInfos,
    required this.commands,
    required this.dependsOns,
    required this.envs,
    required this.image,
    required this.livenessProbes,
    required this.name,
    required this.ports,
    required this.resources,
    required this.sourceCodes,
    required this.startupProbes,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['baseImageUri'] = baseImageUri;
    map['buildInfos'] = Input.encodeList<GetServiceTemplateContainerBuildInfo,
        Map<String, dynamic>>(buildInfos, (value) => value.toMap());
    map['commands'] = commands;
    map['dependsOns'] = dependsOns;
    map['envs'] =
        Input.encodeList<GetServiceTemplateContainerEnv, Map<String, dynamic>>(
            envs, (value) => value.toMap());
    map['image'] = image;
    map['livenessProbes'] = Input.encodeList<
        GetServiceTemplateContainerLivenessProbe,
        Map<String, dynamic>>(livenessProbes, (value) => value.toMap());
    map['name'] = name;
    map['ports'] =
        Input.encodeList<GetServiceTemplateContainerPort, Map<String, dynamic>>(
            ports, (value) => value.toMap());
    map['resources'] = Input.encodeList<GetServiceTemplateContainerResource,
        Map<String, dynamic>>(resources, (value) => value.toMap());
    map['sourceCodes'] = Input.encodeList<GetServiceTemplateContainerSourceCode,
        Map<String, dynamic>>(sourceCodes, (value) => value.toMap());
    map['startupProbes'] = Input.encodeList<
        GetServiceTemplateContainerStartupProbe,
        Map<String, dynamic>>(startupProbes, (value) => value.toMap());
    map['volumeMounts'] = Input.encodeList<
        GetServiceTemplateContainerVolumeMount,
        Map<String, dynamic>>(volumeMounts, (value) => value.toMap());
    map['workingDir'] = workingDir;
    return map;
  }

  factory GetServiceTemplateContainer.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainer(
      args: (map['args'] as List).cast<String>(),
      baseImageUri: map['baseImageUri'] as String,
      buildInfos: Input.decodeList<GetServiceTemplateContainerBuildInfo>(
          map['buildInfos'],
          (value) => GetServiceTemplateContainerBuildInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      commands: (map['commands'] as List).cast<String>(),
      dependsOns: (map['dependsOns'] as List).cast<String>(),
      envs: Input.decodeList<GetServiceTemplateContainerEnv>(
          map['envs'],
          (value) => GetServiceTemplateContainerEnv.fromMap(
              (value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      livenessProbes:
          Input.decodeList<GetServiceTemplateContainerLivenessProbe>(
              map['livenessProbes'],
              (value) => GetServiceTemplateContainerLivenessProbe.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      ports: Input.decodeList<GetServiceTemplateContainerPort>(
          map['ports'],
          (value) => GetServiceTemplateContainerPort.fromMap(
              (value as Map).cast<String, dynamic>())),
      resources: Input.decodeList<GetServiceTemplateContainerResource>(
          map['resources'],
          (value) => GetServiceTemplateContainerResource.fromMap(
              (value as Map).cast<String, dynamic>())),
      sourceCodes: Input.decodeList<GetServiceTemplateContainerSourceCode>(
          map['sourceCodes'],
          (value) => GetServiceTemplateContainerSourceCode.fromMap(
              (value as Map).cast<String, dynamic>())),
      startupProbes: Input.decodeList<GetServiceTemplateContainerStartupProbe>(
          map['startupProbes'],
          (value) => GetServiceTemplateContainerStartupProbe.fromMap(
              (value as Map).cast<String, dynamic>())),
      volumeMounts: Input.decodeList<GetServiceTemplateContainerVolumeMount>(
          map['volumeMounts'],
          (value) => GetServiceTemplateContainerVolumeMount.fromMap(
              (value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] as String,
    );
  }
}
