// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property_pod_property_container_env.dart';
import 'get_job_definition_eks_property_pod_property_container_resource.dart';
import 'get_job_definition_eks_property_pod_property_container_security_context.dart';
import 'get_job_definition_eks_property_pod_property_container_volume_mount.dart';

class GetJobDefinitionEksPropertyPodPropertyContainer {
  /// An array of arguments to the entrypoint
  final pulumi.Input<List<String>> args;
  /// The command that's passed to the container.
  final pulumi.Input<List<String>> commands;
  /// The environment variables to pass to a container.  Array of EksContainerEnvironmentVariable objects.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyContainerEnv>> envs;
  /// The image used to start a container.
  final pulumi.Input<String> image;
  /// The image pull policy for the container.
  final pulumi.Input<String> imagePullPolicy;
  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String> name;
  /// The type and amount of resources to assign to a container.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyContainerResource>> resources;
  /// The security context for a job.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext>> securityContexts;
  /// The volume mounts for the container.
  final pulumi.Input<List<GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount>> volumeMounts;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyContainer].
  /// [args] An array of arguments to the entrypoint
  /// [commands] The command that's passed to the container.
  /// [envs] The environment variables to pass to a container.  Array of EksContainerEnvironmentVariable objects.
  /// [image] The image used to start a container.
  /// [imagePullPolicy] The image pull policy for the container.
  /// [name] The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  /// [resources] The type and amount of resources to assign to a container.
  /// [securityContexts] The security context for a job.
  /// [volumeMounts] The volume mounts for the container.
  GetJobDefinitionEksPropertyPodPropertyContainer({
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
      args: ((map['args'] as List).cast<String>()).input(),
      commands: ((map['commands'] as List).cast<String>()).input(),
      envs: (pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyContainerEnv>(map['envs']!, (value) => GetJobDefinitionEksPropertyPodPropertyContainerEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (map['image'] as String).input(),
      imagePullPolicy: (map['imagePullPolicy'] as String).input(),
      name: (map['name'] as String).input(),
      resources: (pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyContainerResource>(map['resources']!, (value) => GetJobDefinitionEksPropertyPodPropertyContainerResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityContexts: (pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext>(map['securityContexts']!, (value) => GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeMounts: (pulumi.Input.decodeList<GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount>(map['volumeMounts']!, (value) => GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

