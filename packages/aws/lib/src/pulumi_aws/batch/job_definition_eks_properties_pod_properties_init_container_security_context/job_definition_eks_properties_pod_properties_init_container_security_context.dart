// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext {
  /// Whether or not a container or a Kubernetes pod is allowed to gain more privileges than its parent process. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? allowPrivilegeEscalation;

  /// When this parameter is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the container is given elevated permissions on the host container instance. The level of permissions are similar to the root user permissions. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? privileged;
  final bool? readOnlyRootFileSystem;

  /// When this parameter is specified, the container is run as the specified group ID (gid). If this parameter isn't specified, the default is the group that's specified in the image metadata.
  final int? runAsGroup;

  /// When this parameter is specified, the container is run as a user with a uid other than 0. If this parameter isn't specified, so such rule is enforced.
  final bool? runAsNonRoot;

  /// When this parameter is specified, the container is run as the specified user ID (uid). If this parameter isn't specified, the default is the user that's specified in the image metadata.
  final int? runAsUser;

  JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext({
    this.allowPrivilegeEscalation,
    this.privileged,
    this.readOnlyRootFileSystem,
    this.runAsGroup,
    this.runAsNonRoot,
    this.runAsUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowPrivilegeEscalationValue = allowPrivilegeEscalation;
    if (allowPrivilegeEscalationValue != null) {
      map['allowPrivilegeEscalation'] = allowPrivilegeEscalationValue;
    }
    final privilegedValue = privileged;
    if (privilegedValue != null) {
      map['privileged'] = privilegedValue;
    }
    final readOnlyRootFileSystemValue = readOnlyRootFileSystem;
    if (readOnlyRootFileSystemValue != null) {
      map['readOnlyRootFileSystem'] = readOnlyRootFileSystemValue;
    }
    final runAsGroupValue = runAsGroup;
    if (runAsGroupValue != null) {
      map['runAsGroup'] = runAsGroupValue;
    }
    final runAsNonRootValue = runAsNonRoot;
    if (runAsNonRootValue != null) {
      map['runAsNonRoot'] = runAsNonRootValue;
    }
    final runAsUserValue = runAsUser;
    if (runAsUserValue != null) {
      map['runAsUser'] = runAsUserValue;
    }
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext(
      allowPrivilegeEscalation: map['allowPrivilegeEscalation'] == null
          ? null
          : map['allowPrivilegeEscalation'] as bool,
      privileged: map['privileged'] == null ? null : map['privileged'] as bool,
      readOnlyRootFileSystem: map['readOnlyRootFileSystem'] == null
          ? null
          : map['readOnlyRootFileSystem'] as bool,
      runAsGroup: map['runAsGroup'] == null ? null : map['runAsGroup'] as int,
      runAsNonRoot:
          map['runAsNonRoot'] == null ? null : map['runAsNonRoot'] as bool,
      runAsUser: map['runAsUser'] == null ? null : map['runAsUser'] as int,
    );
  }
}
