// ignore_for_file: unused_element, unnecessary_cast


class GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext {
  /// Whether or not a container or a Kubernetes pod is allowed to gain more privileges than its parent process. The default value is `false`.
  final bool allowPrivilegeEscalation;
  /// When this parameter is true, the container is given elevated permissions on the host container instance (similar to the root user).
  final bool privileged;
  final bool readOnlyRootFileSystem;
  /// When this parameter is specified, the container is run as the specified group ID (gid). If this parameter isn't specified, the default is the group that's specified in the image metadata.
  final int runAsGroup;
  /// When this parameter is specified, the container is run as a user with a uid other than 0. If this parameter isn't specified, so such rule is enforced.
  final bool runAsNonRoot;
  /// When this parameter is specified, the container is run as the specified user ID (uid). If this parameter isn't specified, the default is the user that's specified in the image metadata.
  final int runAsUser;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext].
  /// [allowPrivilegeEscalation] Whether or not a container or a Kubernetes pod is allowed to gain more privileges than its parent process. The default value is `false`.
  /// [privileged] When this parameter is true, the container is given elevated permissions on the host container instance (similar to the root user).
  /// [readOnlyRootFileSystem] Required.
  /// [runAsGroup] When this parameter is specified, the container is run as the specified group ID (gid). If this parameter isn't specified, the default is the group that's specified in the image metadata.
  /// [runAsNonRoot] When this parameter is specified, the container is run as a user with a uid other than 0. If this parameter isn't specified, so such rule is enforced.
  /// [runAsUser] When this parameter is specified, the container is run as the specified user ID (uid). If this parameter isn't specified, the default is the user that's specified in the image metadata.
  GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext({
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

  factory GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyInitContainerSecurityContext(
      allowPrivilegeEscalation: map['allowPrivilegeEscalation'] as bool,
      privileged: map['privileged'] as bool,
      readOnlyRootFileSystem: map['readOnlyRootFileSystem'] as bool,
      runAsGroup: map['runAsGroup'] as int,
      runAsNonRoot: map['runAsNonRoot'] as bool,
      runAsUser: map['runAsUser'] as int,
    );
  }
}

