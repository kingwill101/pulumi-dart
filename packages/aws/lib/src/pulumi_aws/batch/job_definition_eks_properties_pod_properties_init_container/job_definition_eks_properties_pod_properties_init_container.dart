// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_definition_eks_properties_pod_properties_init_container_env/job_definition_eks_properties_pod_properties_init_container_env.dart';
import '../job_definition_eks_properties_pod_properties_init_container_resources/job_definition_eks_properties_pod_properties_init_container_resources.dart';
import '../job_definition_eks_properties_pod_properties_init_container_security_context/job_definition_eks_properties_pod_properties_init_container_security_context.dart';
import '../job_definition_eks_properties_pod_properties_init_container_volume_mount/job_definition_eks_properties_pod_properties_init_container_volume_mount.dart';

class JobDefinitionEksPropertiesPodPropertiesInitContainer {
  /// Array of arguments to the entrypoint. If this isn't specified, the CMD of the container image is used. This corresponds to the args member in the Entrypoint portion of the Pod in Kubernetes. Environment variable references are expanded using the container's environment.
  final List<String>? args;

  /// Entrypoint for the container. This isn't run within a shell. If this isn't specified, the ENTRYPOINT of the container image is used. Environment variable references are expanded using the container's environment.
  final List<String>? commands;

  /// Environment variables to pass to a container. See EKS Environment below.
  final List<JobDefinitionEksPropertiesPodPropertiesInitContainerEnv>? envs;

  /// Docker image used to start the container.
  final String image;

  /// Image pull policy for the container. Supported values are `Always`, `IfNotPresent`, and `Never`.
  final String? imagePullPolicy;

  /// Name of the job definition.
  final String? name;

  /// Type and amount of resources to assign to a container. The supported resources include <span pulumi-lang-nodejs="`memory`" pulumi-lang-dotnet="`Memory`" pulumi-lang-go="`memory`" pulumi-lang-python="`memory`" pulumi-lang-yaml="`memory`" pulumi-lang-java="`memory`">`memory`</span>, <span pulumi-lang-nodejs="`cpu`" pulumi-lang-dotnet="`Cpu`" pulumi-lang-go="`cpu`" pulumi-lang-python="`cpu`" pulumi-lang-yaml="`cpu`" pulumi-lang-java="`cpu`">`cpu`</span>, and `nvidia.com/gpu`.
  final JobDefinitionEksPropertiesPodPropertiesInitContainerResources?
      resources;

  /// Security context for a job. See <span pulumi-lang-nodejs="`securityContext`" pulumi-lang-dotnet="`SecurityContext`" pulumi-lang-go="`securityContext`" pulumi-lang-python="`security_context`" pulumi-lang-yaml="`securityContext`" pulumi-lang-java="`securityContext`">`security_context`</span> below.
  final JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext?
      securityContext;

  /// Volume mounts for the container.
  final List<JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount>?
      volumeMounts;

  JobDefinitionEksPropertiesPodPropertiesInitContainer({
    this.args,
    this.commands,
    this.envs,
    required this.image,
    this.imagePullPolicy,
    this.name,
    this.resources,
    this.securityContext,
    this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = commandsValue;
    }
    final envsValue = envs;
    if (envsValue != null) {
      map['envs'] = Input.encodeList<
          JobDefinitionEksPropertiesPodPropertiesInitContainerEnv,
          Map<String, dynamic>>(envsValue, (value) => value.toMap());
    }
    map['image'] = image;
    final imagePullPolicyValue = imagePullPolicy;
    if (imagePullPolicyValue != null) {
      map['imagePullPolicy'] = imagePullPolicyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue.toMap();
    }
    final securityContextValue = securityContext;
    if (securityContextValue != null) {
      map['securityContext'] = securityContextValue.toMap();
    }
    final volumeMountsValue = volumeMounts;
    if (volumeMountsValue != null) {
      map['volumeMounts'] = Input.encodeList<
          JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount,
          Map<String, dynamic>>(volumeMountsValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesInitContainer.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesInitContainer(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      envs: map['envs'] == null
          ? null
          : Input.decodeList<
                  JobDefinitionEksPropertiesPodPropertiesInitContainerEnv>(
              map['envs'],
              (value) => JobDefinitionEksPropertiesPodPropertiesInitContainerEnv
                  .fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] == null
          ? null
          : map['imagePullPolicy'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resources: map['resources'] == null
          ? null
          : JobDefinitionEksPropertiesPodPropertiesInitContainerResources
              .fromMap((map['resources'] as Map).cast<String, dynamic>()),
      securityContext: map['securityContext'] == null
          ? null
          : JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext
              .fromMap((map['securityContext'] as Map).cast<String, dynamic>()),
      volumeMounts: map['volumeMounts'] == null
          ? null
          : Input.decodeList<
                  JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount>(
              map['volumeMounts'],
              (value) =>
                  JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
