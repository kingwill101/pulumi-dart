// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property_pod_property_container_env.dart';
import 'get_job_definition_eks_property_pod_property_container_resource.dart';
import 'get_job_definition_eks_property_pod_property_container_security_context.dart';
import 'get_job_definition_eks_property_pod_property_container_volume_mount.dart';

class GetJobDefinitionEksPropertyPodPropertyContainer {
  /// Array of arguments to the entrypoint.
  final pulumi.Input<List<String>> args;
  /// Command that's passed to the container.
  final pulumi.Input<List<String>> commands;
  /// Environment variables to pass to a container. See `env` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyContainerEnv>> envs;
  /// Image used to start a container.
  final pulumi.Input<String> image;
  /// Image pull policy for the container.
  final pulumi.Input<String> imagePullPolicy;
  /// Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String> name;
  /// Type and amount of resources to assign to a container. See `resources` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyContainerResource>> resources;
  /// Security context for a job. See `securityContext` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext>> securityContexts;
  /// Volume mounts for the container. See `volumeMounts` below.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount>> volumeMounts;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyContainer].
  /// [args] Array of arguments to the entrypoint.
  /// [commands] Command that's passed to the container.
  /// [envs] Environment variables to pass to a container. See `env` below.
  /// [image] Image used to start a container.
  /// [imagePullPolicy] Image pull policy for the container.
  /// [name] Name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [resources] Type and amount of resources to assign to a container. See `resources` below.
  /// [securityContexts] Security context for a job. See `securityContext` below.
  /// [volumeMounts] Volume mounts for the container. See `volumeMounts` below.
  const GetJobDefinitionEksPropertyPodPropertyContainer({
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
      'envs': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyContainerEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyContainerEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': image,
      'imagePullPolicy': imagePullPolicy,
      'name': name,
      'resources': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyContainerResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyContainerResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityContexts': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext>, List<Map<String, dynamic>>>(securityContexts, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeMounts': pulumi.Input.mapInputValue<List<GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyContainer.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyContainer(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<String>()),
      envs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyContainerEnv>(map['envs']!, (value) => GetJobDefinitionEksPropertyPodPropertyContainerEnv.fromMap((value as Map).cast<String, dynamic>()))),
      image: pulumi.Input.fromValue(map['image'] as String),
      imagePullPolicy: pulumi.Input.fromValue(map['imagePullPolicy'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyContainerResource>(map['resources']!, (value) => GetJobDefinitionEksPropertyPodPropertyContainerResource.fromMap((value as Map).cast<String, dynamic>()))),
      securityContexts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext>(map['securityContexts']!, (value) => GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext.fromMap((value as Map).cast<String, dynamic>()))),
      volumeMounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount>(map['volumeMounts']!, (value) => GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
