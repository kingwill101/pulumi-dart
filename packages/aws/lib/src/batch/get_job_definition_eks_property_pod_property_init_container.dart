// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property_pod_property_init_container_env.dart';
import 'get_job_definition_eks_property_pod_property_init_container_resource.dart';
import 'get_job_definition_eks_property_pod_property_init_container_security_context.dart';
import 'get_job_definition_eks_property_pod_property_init_container_volume_mount.dart';

class GetJobDefinitionEksPropertyPodPropertyInitContainer {
  /// An array of arguments to the entrypoint
  final List<String> args;
  /// The command that's passed to the container.
  final List<String> commands;
  /// The environment variables to pass to a container.  Array of EksContainerEnvironmentVariable objects.
  final List<GetJobDefinitionEksPropertyPodPropertyInitContainerEnv> envs;
  /// The image used to start a container.
  final String image;
  /// The image pull policy for the container.
  final String imagePullPolicy;
  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final String name;
  /// The type and amount of resources to assign to a container.
  final List<GetJobDefinitionEksPropertyPodPropertyInitContainerResource> resources;
  /// The security context for a job.
  final List<GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext> securityContexts;
  /// The volume mounts for the container.
  final List<GetJobDefinitionEksPropertyPodPropertyInitContainerVolumeMount> volumeMounts;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyInitContainer].
  /// [args] An array of arguments to the entrypoint
  /// [commands] The command that's passed to the container.
  /// [envs] The environment variables to pass to a container.  Array of EksContainerEnvironmentVariable objects.
  /// [image] The image used to start a container.
  /// [imagePullPolicy] The image pull policy for the container.
  /// [name] The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [resources] The type and amount of resources to assign to a container.
  /// [securityContexts] The security context for a job.
  /// [volumeMounts] The volume mounts for the container.
  GetJobDefinitionEksPropertyPodPropertyInitContainer({
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
      'envs': pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerEnv, Map<String, dynamic>>(envs, (value) => value.toMap()),
      'image': image,
      'imagePullPolicy': imagePullPolicy,
      'name': name,
      'resources': pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerResource, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'securityContexts': pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext, Map<String, dynamic>>(securityContexts, (value) => value.toMap()),
      'volumeMounts': pulumi.Input.encodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerVolumeMount, Map<String, dynamic>>(volumeMounts, (value) => value.toMap()),
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyInitContainer.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyInitContainer(
      args: (map['args'] as List).cast<String>(),
      commands: (map['commands'] as List).cast<String>(),
      envs: pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerEnv>(map['envs'], (value) => GetJobDefinitionEksPropertyPodPropertyInitContainerEnv.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] as String,
      name: map['name'] as String,
      resources: pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerResource>(map['resources'], (value) => GetJobDefinitionEksPropertyPodPropertyInitContainerResource.fromMap((value as Map).cast<String, dynamic>())),
      securityContexts: pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext>(map['securityContexts'], (value) => GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext.fromMap((value as Map).cast<String, dynamic>())),
      volumeMounts: pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyInitContainerVolumeMount>(map['volumeMounts'], (value) => GetJobDefinitionEksPropertyPodPropertyInitContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

