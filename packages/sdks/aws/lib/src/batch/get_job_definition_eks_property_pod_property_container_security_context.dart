// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext {
  /// Whether or not a container or a Kubernetes pod is allowed to gain more privileges than its parent process. The default value is `false`.
  final pulumi.Input<bool> allowPrivilegeEscalation;
  /// When this parameter is true, the container is given elevated permissions on the host container instance (similar to the root user).
  final pulumi.Input<bool> privileged;
  final pulumi.Input<bool> readOnlyRootFileSystem;
  /// When this parameter is specified, the container is run as the specified group ID (gid). If this parameter isn't specified, the default is the group that's specified in the image metadata.
  final pulumi.Input<int> runAsGroup;
  /// When this parameter is specified, the container is run as a user with a uid other than 0. If this parameter isn't specified, so such rule is enforced.
  final pulumi.Input<bool> runAsNonRoot;
  /// When this parameter is specified, the container is run as the specified user ID (uid). If this parameter isn't specified, the default is the user that's specified in the image metadata.
  final pulumi.Input<int> runAsUser;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext].
  /// [allowPrivilegeEscalation] Whether or not a container or a Kubernetes pod is allowed to gain more privileges than its parent process. The default value is `false`.
  /// [privileged] When this parameter is true, the container is given elevated permissions on the host container instance (similar to the root user).
  /// [readOnlyRootFileSystem] Required.
  /// [runAsGroup] When this parameter is specified, the container is run as the specified group ID (gid). If this parameter isn't specified, the default is the group that's specified in the image metadata.
  /// [runAsNonRoot] When this parameter is specified, the container is run as a user with a uid other than 0. If this parameter isn't specified, so such rule is enforced.
  /// [runAsUser] When this parameter is specified, the container is run as the specified user ID (uid). If this parameter isn't specified, the default is the user that's specified in the image metadata.
  GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext({
    required this.allowPrivilegeEscalation,
    required this.privileged,
    required this.readOnlyRootFileSystem,
    required this.runAsGroup,
    required this.runAsNonRoot,
    required this.runAsUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPrivilegeEscalation': allowPrivilegeEscalation,
      'privileged': privileged,
      'readOnlyRootFileSystem': readOnlyRootFileSystem,
      'runAsGroup': runAsGroup,
      'runAsNonRoot': runAsNonRoot,
      'runAsUser': runAsUser,
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext(
      allowPrivilegeEscalation: (map['allowPrivilegeEscalation'] as bool).input(),
      privileged: (map['privileged'] as bool).input(),
      readOnlyRootFileSystem: (map['readOnlyRootFileSystem'] as bool).input(),
      runAsGroup: (map['runAsGroup'] as int).input(),
      runAsNonRoot: (map['runAsNonRoot'] as bool).input(),
      runAsUser: (map['runAsUser'] as int).input(),
    );
  }
}

