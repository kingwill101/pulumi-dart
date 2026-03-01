// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property_pod_property_container_env.dart';
import 'get_job_definition_eks_property_pod_property_container_resource.dart';
import 'get_job_definition_eks_property_pod_property_container_security_context.dart';
import 'get_job_definition_eks_property_pod_property_container_volume_mount.dart';

class GetJobDefinitionEksPropertyPodPropertyContainer {
  /// An array of arguments to the entrypoint
  final List<String> args;

  /// The command that's passed to the container.
  final List<String> commands;

  /// The environment variables to pass to a container.  Array of EksContainerEnvironmentVariable objects.
  final List<GetJobDefinitionEksPropertyPodPropertyContainerEnv> envs;

  /// The image used to start a container.
  final String image;

  /// The image pull policy for the container.
  final String imagePullPolicy;

  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final String name;

  /// The type and amount of resources to assign to a container.
  final List<GetJobDefinitionEksPropertyPodPropertyContainerResource> resources;

  /// The security context for a job.
  final List<GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext>
  securityContexts;

  /// The volume mounts for the container.
  final List<GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount>
  volumeMounts;

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
      'envs':
          pulumi.Input.encodeList<
            GetJobDefinitionEksPropertyPodPropertyContainerEnv,
            Map<String, dynamic>
          >(envs, (value) => value.toMap()),
      'image': image,
      'imagePullPolicy': imagePullPolicy,
      'name': name,
      'resources':
          pulumi.Input.encodeList<
            GetJobDefinitionEksPropertyPodPropertyContainerResource,
            Map<String, dynamic>
          >(resources, (value) => value.toMap()),
      'securityContexts':
          pulumi.Input.encodeList<
            GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext,
            Map<String, dynamic>
          >(securityContexts, (value) => value.toMap()),
      'volumeMounts':
          pulumi.Input.encodeList<
            GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount,
            Map<String, dynamic>
          >(volumeMounts, (value) => value.toMap()),
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyContainer.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionEksPropertyPodPropertyContainer(
      args: (map['args'] as List).cast<String>(),
      commands: (map['commands'] as List).cast<String>(),
      envs:
          pulumi.Input.decodeList<
            GetJobDefinitionEksPropertyPodPropertyContainerEnv
          >(
            map['envs'],
            (value) =>
                GetJobDefinitionEksPropertyPodPropertyContainerEnv.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      image: map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] as String,
      name: map['name'] as String,
      resources:
          pulumi.Input.decodeList<
            GetJobDefinitionEksPropertyPodPropertyContainerResource
          >(
            map['resources'],
            (value) =>
                GetJobDefinitionEksPropertyPodPropertyContainerResource.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      securityContexts:
          pulumi.Input.decodeList<
            GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext
          >(
            map['securityContexts'],
            (value) =>
                GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      volumeMounts:
          pulumi.Input.decodeList<
            GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount
          >(
            map['volumeMounts'],
            (value) =>
                GetJobDefinitionEksPropertyPodPropertyContainerVolumeMount.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
