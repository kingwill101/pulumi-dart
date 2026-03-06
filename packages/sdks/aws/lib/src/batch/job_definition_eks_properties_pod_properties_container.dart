// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_definition_eks_properties_pod_properties_container_env.dart';
import 'job_definition_eks_properties_pod_properties_container_resources.dart';
import 'job_definition_eks_properties_pod_properties_container_security_context.dart';
import 'job_definition_eks_properties_pod_properties_container_volume_mount.dart';

class JobDefinitionEksPropertiesPodPropertiesContainer {
  /// Array of arguments to the entrypoint. If this isn't specified, the CMD of the container image is used. This corresponds to the args member in the Entrypoint portion of the Pod in Kubernetes. Environment variable references are expanded using the container's environment.
  final pulumi.Input<List<String>>? args;
  /// Entrypoint for the container. This isn't run within a shell. If this isn't specified, the ENTRYPOINT of the container image is used. Environment variable references are expanded using the container's environment.
  final pulumi.Input<List<String>>? commands;
  /// Environment variables to pass to a container. See EKS Environment below.
  final pulumi.Input<List<JobDefinitionEksPropertiesPodPropertiesContainerEnv>>? envs;
  /// Docker image used to start the container.
  final pulumi.Input<String> image;
  /// Image pull policy for the container. Supported values are `Always`, `IfNotPresent`, and `Never`.
  final pulumi.Input<String>? imagePullPolicy;
  /// Name of the container. If the name isn't specified, the default name "Default" is used. Each container in a pod must have a unique name.
  final pulumi.Input<String>? name;
  /// Type and amount of resources to assign to a container. The supported resources include `memory`, `cpu`, and `nvidia.com/gpu`.
  final pulumi.Input<JobDefinitionEksPropertiesPodPropertiesContainerResources>? resources;
  /// Security context for a job. See `security_context` below.
  final pulumi.Input<JobDefinitionEksPropertiesPodPropertiesContainerSecurityContext>? securityContext;
  /// Volume mounts for the container.
  final pulumi.Input<List<JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount>>? volumeMounts;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesContainer].
  /// [args] Array of arguments to the entrypoint. If this isn't specified, the CMD of the container image is used. This corresponds to the args member in the Entrypoint portion of the Pod in Kubernetes. Environment variable references are expanded using the container's environment.
  /// [commands] Entrypoint for the container. This isn't run within a shell. If this isn't specified, the ENTRYPOINT of the container image is used. Environment variable references are expanded using the container's environment.
  /// [envs] Environment variables to pass to a container. See EKS Environment below.
  /// [image] Docker image used to start the container.
  /// [imagePullPolicy] Image pull policy for the container. Supported values are `Always`, `IfNotPresent`, and `Never`.
  /// [name] Name of the container. If the name isn't specified, the default name "Default" is used. Each container in a pod must have a unique name.
  /// [resources] Type and amount of resources to assign to a container. The supported resources include `memory`, `cpu`, and `nvidia.com/gpu`.
  /// [securityContext] Security context for a job. See `security_context` below.
  /// [volumeMounts] Volume mounts for the container.
  const JobDefinitionEksPropertiesPodPropertiesContainer({
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
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<JobDefinitionEksPropertiesPodPropertiesContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<JobDefinitionEksPropertiesPodPropertiesContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'imagePullPolicy': ?imagePullPolicy,
      'name': ?name,
      'resources': ?pulumi.Input.mapOptionalInputValue<JobDefinitionEksPropertiesPodPropertiesContainerResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'securityContext': ?pulumi.Input.mapOptionalInputValue<JobDefinitionEksPropertiesPodPropertiesContainerSecurityContext, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesContainer.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesContainer(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobDefinitionEksPropertiesPodPropertiesContainerEnv>(guardedValue, (value) => JobDefinitionEksPropertiesPodPropertiesContainerEnv.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: pulumi.Input.fromValue(map['image'] as String),
      imagePullPolicy: (() { final guardedValue = map['imagePullPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobDefinitionEksPropertiesPodPropertiesContainerResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityContext: (() { final guardedValue = map['securityContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobDefinitionEksPropertiesPodPropertiesContainerSecurityContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount>(guardedValue, (value) => JobDefinitionEksPropertiesPodPropertiesContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

