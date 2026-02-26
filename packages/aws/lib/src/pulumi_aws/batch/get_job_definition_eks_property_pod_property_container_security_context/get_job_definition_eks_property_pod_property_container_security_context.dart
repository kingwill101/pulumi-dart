// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext {
  /// Whether or not a container or a Kubernetes pod is allowed to gain more privileges than its parent process. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
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

  GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext({
    required this.allowPrivilegeEscalation,
    required this.privileged,
    required this.readOnlyRootFileSystem,
    required this.runAsGroup,
    required this.runAsNonRoot,
    required this.runAsUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowPrivilegeEscalation'] = allowPrivilegeEscalation;
    map['privileged'] = privileged;
    map['readOnlyRootFileSystem'] = readOnlyRootFileSystem;
    map['runAsGroup'] = runAsGroup;
    map['runAsNonRoot'] = runAsNonRoot;
    map['runAsUser'] = runAsUser;
    return map;
  }

  factory GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyContainerSecurityContext(
      allowPrivilegeEscalation: map['allowPrivilegeEscalation'] as bool,
      privileged: map['privileged'] as bool,
      readOnlyRootFileSystem: map['readOnlyRootFileSystem'] as bool,
      runAsGroup: map['runAsGroup'] as int,
      runAsNonRoot: map['runAsNonRoot'] as bool,
      runAsUser: map['runAsUser'] as int,
    );
  }
}
