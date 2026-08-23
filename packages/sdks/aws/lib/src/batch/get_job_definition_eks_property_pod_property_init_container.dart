// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property_pod_property_init_container_env.dart';
import 'get_job_definition_eks_property_pod_property_init_container_resource.dart';
import 'get_job_definition_eks_property_pod_property_init_container_security_context.dart';
import 'get_job_definition_eks_property_pod_property_init_container_volume_mount.dart';

class GetJobDefinitionEksPropertyPodPropertyInitContainer {
  /// Array of arguments to the entrypoint.
  final pulumi.Input<List<String>> args;
  /// Command that's passed to the container.
  final pulumi.Input<List<String>> commands;
  /// Environment variables to pass to a container. See `env` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyInitContainerEnv>> envs;
  /// Image used to start a container.
  final pulumi.Input<String> image;
  /// Image pull policy for the container.
  final pulumi.Input<String> imagePullPolicy;
  /// Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String> name;
  /// Type and amount of resources to assign to a container. See `resources` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyInitContainerResource>> resources;
  /// Security context for a job. See `securityContext` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext>> securityContexts;
  /// Volume mounts for the container. See `volumeMounts` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyInitContainerVolumeMount>> volumeMounts;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyInitContainer].
  /// [args] Array of arguments to the entrypoint.
  /// [commands] Command that's passed to the container.
  /// [envs] Environment variables to pass to a container. See `env` below.
  /// [image] Image used to start a container.
  /// [imagePullPolicy] Image pull policy for the container.
  /// [name] Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [resources] Type and amount of resources to assign to a container. See `resources` below.
  /// [securityContexts] Security context for a job. See `securityContext` below.
  /// [volumeMounts] Volume mounts for the container. See `volumeMounts` below.
  const GetJobDefinitionEksPropertyPodPropertyInitContainer({
    required this.args,
    required this.commands,
    required this.envs,
    required this.image,
    required this.imagePullPolicy,
    required this.name,
    required this.resources,
    required this.securityContexts,
    required this.volumeMounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'commands': commands,
      'envs': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyInitContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'imagePullPolicy': imagePullPolicy,
      'name': name,
      'resources': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyInitContainerResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityContexts': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext>, List<Map<String, dynamic>>>(securityContexts, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyInitContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyInitContainer.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyInitContainer(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<String>()),
      envs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerEnv>(map['envs']!, (value) => GetJobDefinitionEksPropertyPodPropertyInitContainerEnv.fromMap((value as Map).cast<String, dynamic>()))),
      image: pulumi.Input.fromValue(map['image'] as String),
      imagePullPolicy: pulumi.Input.fromValue(map['imagePullPolicy'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerResource>(map['resources']!, (value) => GetJobDefinitionEksPropertyPodPropertyInitContainerResource.fromMap((value as Map).cast<String, dynamic>()))),
      securityContexts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext>(map['securityContexts']!, (value) => GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext.fromMap((value as Map).cast<String, dynamic>()))),
      volumeMounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerVolumeMount>(map['volumeMounts']!, (value) => GetJobDefinitionEksPropertyPodPropertyInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
