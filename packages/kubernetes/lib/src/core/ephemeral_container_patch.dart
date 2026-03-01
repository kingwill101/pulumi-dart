// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_port_patch.dart';
import 'container_resize_policy_patch.dart';
import 'container_restart_rule_patch.dart';
import 'env_from_source_patch.dart';
import 'env_var_patch.dart';
import 'lifecycle_patch.dart';
import 'probe_patch.dart';
import 'resource_requirements_patch.dart';
import 'security_context_patch.dart';
import 'volume_device_patch.dart';
import 'volume_mount_patch.dart';

/// An EphemeralContainer is a temporary container that you may add to an existing Pod for user-initiated activities such as debugging. Ephemeral containers have no resource or scheduling guarantees, and they will not be restarted when they exit or when a Pod is removed or restarted. The kubelet may evict a Pod if an ephemeral container causes the Pod to exceed its resource allocation.
///
/// To add an ephemeral container, use the ephemeralcontainers subresource of an existing Pod. Ephemeral containers may not be removed or restarted.
class EphemeralContainerPatch {
  /// Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final List<String>? args;
  /// Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final List<String>? command;
  /// List of environment variables to set in the container. Cannot be updated.
  final List<EnvVarPatch>? env;
  /// List of sources to populate environment variables in the container. The keys defined within a source may consist of any printable ASCII characters except '='. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  final List<EnvFromSourcePatch>? envFrom;
  /// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
  final String? image;
  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
  final String? imagePullPolicy;
  /// Lifecycle is not allowed for ephemeral containers.
  final LifecyclePatch? lifecycle;
  /// Probes are not allowed for ephemeral containers.
  final ProbePatch? livenessProbe;
  /// Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
  final String? name;
  /// Ports are not allowed for ephemeral containers.
  final List<ContainerPortPatch>? ports;
  /// Probes are not allowed for ephemeral containers.
  final ProbePatch? readinessProbe;
  /// Resources resize policy for the container.
  final List<ContainerResizePolicyPatch>? resizePolicy;
  /// Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod.
  final ResourceRequirementsPatch? resources;
  /// Restart policy for the container to manage the restart behavior of each container within a pod. You cannot set this field on ephemeral containers.
  final String? restartPolicy;
  /// Represents a list of rules to be checked to determine if the container should be restarted on exit. You cannot set this field on ephemeral containers.
  final List<ContainerRestartRulePatch>? restartPolicyRules;
  /// Optional: SecurityContext defines the security options the ephemeral container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext.
  final SecurityContextPatch? securityContext;
  /// Probes are not allowed for ephemeral containers.
  final ProbePatch? startupProbe;
  /// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  final bool? stdin;
  /// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
  final bool? stdinOnce;
  /// If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.
  ///
  /// The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined.
  final String? targetContainerName;
  /// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  final String? terminationMessagePath;
  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final String? terminationMessagePolicy;
  /// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  final bool? tty;
  /// volumeDevices is the list of block devices to be used by the container.
  final List<VolumeDevicePatch>? volumeDevices;
  /// Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
  final List<VolumeMountPatch>? volumeMounts;
  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  final String? workingDir;

  /// Creates a new [EphemeralContainerPatch].
  /// [args] Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [command] Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [env] List of environment variables to set in the container. Cannot be updated.
  /// [envFrom] List of sources to populate environment variables in the container. The keys defined within a source may consist of any printable ASCII characters except '='. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  /// [image] Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
  /// [imagePullPolicy] Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
  /// [lifecycle] Lifecycle is not allowed for ephemeral containers.
  /// [livenessProbe] Probes are not allowed for ephemeral containers.
  /// [name] Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
  /// [ports] Ports are not allowed for ephemeral containers.
  /// [readinessProbe] Probes are not allowed for ephemeral containers.
  /// [resizePolicy] Resources resize policy for the container.
  /// [resources] Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod.
  /// [restartPolicy] Restart policy for the container to manage the restart behavior of each container within a pod. You cannot set this field on ephemeral containers.
  /// [restartPolicyRules] Represents a list of rules to be checked to determine if the container should be restarted on exit. You cannot set this field on ephemeral containers.
  /// [securityContext] Optional: SecurityContext defines the security options the ephemeral container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext.
  /// [startupProbe] Probes are not allowed for ephemeral containers.
  /// [stdin] Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  /// [stdinOnce] Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
  /// [targetContainerName] If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.
  /// [terminationMessagePath] Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  /// [terminationMessagePolicy] Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  /// [tty] Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  /// [volumeDevices] volumeDevices is the list of block devices to be used by the container.
  /// [volumeMounts] Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  EphemeralContainerPatch({
    this.args,
    this.command,
    this.env,
    this.envFrom,
    this.image,
    this.imagePullPolicy,
    this.lifecycle,
    this.livenessProbe,
    this.name,
    this.ports,
    this.readinessProbe,
    this.resizePolicy,
    this.resources,
    this.restartPolicy,
    this.restartPolicyRules,
    this.securityContext,
    this.startupProbe,
    this.stdin,
    this.stdinOnce,
    this.targetContainerName,
    this.terminationMessagePath,
    this.terminationMessagePolicy,
    this.tty,
    this.volumeDevices,
    this.volumeMounts,
    this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'env': ?env == null ? null : pulumi.Input.encodeList<EnvVarPatch, Map<String, dynamic>>(env!, (value) => value.toMap()),
      'envFrom': ?envFrom == null ? null : pulumi.Input.encodeList<EnvFromSourcePatch, Map<String, dynamic>>(envFrom!, (value) => value.toMap()),
      'image': ?image,
      'imagePullPolicy': ?imagePullPolicy,
      'lifecycle': ?lifecycle == null ? null : lifecycle!.toMap(),
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'name': ?name,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<ContainerPortPatch, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'readinessProbe': ?readinessProbe == null ? null : readinessProbe!.toMap(),
      'resizePolicy': ?resizePolicy == null ? null : pulumi.Input.encodeList<ContainerResizePolicyPatch, Map<String, dynamic>>(resizePolicy!, (value) => value.toMap()),
      'resources': ?resources == null ? null : resources!.toMap(),
      'restartPolicy': ?restartPolicy,
      'restartPolicyRules': ?restartPolicyRules == null ? null : pulumi.Input.encodeList<ContainerRestartRulePatch, Map<String, dynamic>>(restartPolicyRules!, (value) => value.toMap()),
      'securityContext': ?securityContext == null ? null : securityContext!.toMap(),
      'startupProbe': ?startupProbe == null ? null : startupProbe!.toMap(),
      'stdin': ?stdin,
      'stdinOnce': ?stdinOnce,
      'targetContainerName': ?targetContainerName,
      'terminationMessagePath': ?terminationMessagePath,
      'terminationMessagePolicy': ?terminationMessagePolicy,
      'tty': ?tty,
      'volumeDevices': ?volumeDevices == null ? null : pulumi.Input.encodeList<VolumeDevicePatch, Map<String, dynamic>>(volumeDevices!, (value) => value.toMap()),
      'volumeMounts': ?volumeMounts == null ? null : pulumi.Input.encodeList<VolumeMountPatch, Map<String, dynamic>>(volumeMounts!, (value) => value.toMap()),
      'workingDir': ?workingDir,
    };
  }

  factory EphemeralContainerPatch.fromMap(Map<String, dynamic> map) {
    return EphemeralContainerPatch(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      env: map['env'] == null ? null : pulumi.Input.decodeList<EnvVarPatch>(map['env'], (value) => EnvVarPatch.fromMap((value as Map).cast<String, dynamic>())),
      envFrom: map['envFrom'] == null ? null : pulumi.Input.decodeList<EnvFromSourcePatch>(map['envFrom'], (value) => EnvFromSourcePatch.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : map['image'] as String,
      imagePullPolicy: map['imagePullPolicy'] == null ? null : map['imagePullPolicy'] as String,
      lifecycle: map['lifecycle'] == null ? null : LifecyclePatch.fromMap((map['lifecycle'] as Map).cast<String, dynamic>()),
      livenessProbe: map['livenessProbe'] == null ? null : ProbePatch.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<ContainerPortPatch>(map['ports'], (value) => ContainerPortPatch.fromMap((value as Map).cast<String, dynamic>())),
      readinessProbe: map['readinessProbe'] == null ? null : ProbePatch.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>()),
      resizePolicy: map['resizePolicy'] == null ? null : pulumi.Input.decodeList<ContainerResizePolicyPatch>(map['resizePolicy'], (value) => ContainerResizePolicyPatch.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : ResourceRequirementsPatch.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      restartPolicy: map['restartPolicy'] == null ? null : map['restartPolicy'] as String,
      restartPolicyRules: map['restartPolicyRules'] == null ? null : pulumi.Input.decodeList<ContainerRestartRulePatch>(map['restartPolicyRules'], (value) => ContainerRestartRulePatch.fromMap((value as Map).cast<String, dynamic>())),
      securityContext: map['securityContext'] == null ? null : SecurityContextPatch.fromMap((map['securityContext'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null ? null : ProbePatch.fromMap((map['startupProbe'] as Map).cast<String, dynamic>()),
      stdin: map['stdin'] == null ? null : map['stdin'] as bool,
      stdinOnce: map['stdinOnce'] == null ? null : map['stdinOnce'] as bool,
      targetContainerName: map['targetContainerName'] == null ? null : map['targetContainerName'] as String,
      terminationMessagePath: map['terminationMessagePath'] == null ? null : map['terminationMessagePath'] as String,
      terminationMessagePolicy: map['terminationMessagePolicy'] == null ? null : map['terminationMessagePolicy'] as String,
      tty: map['tty'] == null ? null : map['tty'] as bool,
      volumeDevices: map['volumeDevices'] == null ? null : pulumi.Input.decodeList<VolumeDevicePatch>(map['volumeDevices'], (value) => VolumeDevicePatch.fromMap((value as Map).cast<String, dynamic>())),
      volumeMounts: map['volumeMounts'] == null ? null : pulumi.Input.decodeList<VolumeMountPatch>(map['volumeMounts'], (value) => VolumeMountPatch.fromMap((value as Map).cast<String, dynamic>())),
      workingDir: map['workingDir'] == null ? null : map['workingDir'] as String,
    );
  }
}

