// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext {
  /// Whether or not a container or a Kubernetes pod is allowed to gain more privileges than its parent process. The default value is `false`.
  final pulumi.Input<bool>? allowPrivilegeEscalation;
  /// When this parameter is `true`, the container is given elevated permissions on the host container instance. The level of permissions are similar to the root user permissions. The default value is `false`.
  final pulumi.Input<bool>? privileged;
  final pulumi.Input<bool>? readOnlyRootFileSystem;
  /// When this parameter is specified, the container is run as the specified group ID (gid). If this parameter isn't specified, the default is the group that's specified in the image metadata.
  final pulumi.Input<int>? runAsGroup;
  /// When this parameter is specified, the container is run as a user with a uid other than 0. If this parameter isn't specified, so such rule is enforced.
  final pulumi.Input<bool>? runAsNonRoot;
  /// When this parameter is specified, the container is run as the specified user ID (uid). If this parameter isn't specified, the default is the user that's specified in the image metadata.
  final pulumi.Input<int>? runAsUser;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext].
  /// [allowPrivilegeEscalation] Whether or not a container or a Kubernetes pod is allowed to gain more privileges than its parent process. The default value is `false`.
  /// [privileged] When this parameter is `true`, the container is given elevated permissions on the host container instance. The level of permissions are similar to the root user permissions. The default value is `false`.
  /// [readOnlyRootFileSystem] Optional.
  /// [runAsGroup] When this parameter is specified, the container is run as the specified group ID (gid). If this parameter isn't specified, the default is the group that's specified in the image metadata.
  /// [runAsNonRoot] When this parameter is specified, the container is run as a user with a uid other than 0. If this parameter isn't specified, so such rule is enforced.
  /// [runAsUser] When this parameter is specified, the container is run as the specified user ID (uid). If this parameter isn't specified, the default is the user that's specified in the image metadata.
  JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext({
    this.allowPrivilegeEscalation,
    this.privileged,
    this.readOnlyRootFileSystem,
    this.runAsGroup,
    this.runAsNonRoot,
    this.runAsUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPrivilegeEscalation': ?allowPrivilegeEscalation,
      'privileged': ?privileged,
      'readOnlyRootFileSystem': ?readOnlyRootFileSystem,
      'runAsGroup': ?runAsGroup,
      'runAsNonRoot': ?runAsNonRoot,
      'runAsUser': ?runAsUser,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesInitContainerSecurityContext(
      allowPrivilegeEscalation: (() { final guardedValue = map['allowPrivilegeEscalation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privileged: (() { final guardedValue = map['privileged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readOnlyRootFileSystem: (() { final guardedValue = map['readOnlyRootFileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runAsGroup: (() { final guardedValue = map['runAsGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      runAsNonRoot: (() { final guardedValue = map['runAsNonRoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runAsUser: (() { final guardedValue = map['runAsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

