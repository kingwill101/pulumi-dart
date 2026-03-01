// ignore_for_file: unused_element, unnecessary_cast

import 'security_context_capabilities_definition_response.dart';

/// The security context for the container.
class SecurityContextDefinitionResponse {
  /// A boolean value indicating whether the init process can elevate its privileges
  final bool? allowPrivilegeEscalation;
  /// The capabilities to add or drop from a container.
  final SecurityContextCapabilitiesDefinitionResponse? capabilities;
  /// The flag to determine if the container permissions is elevated to Privileged.
  final bool? privileged;
  /// Sets the User GID for the container.
  final int? runAsGroup;
  /// Sets the User UID for the container.
  final int? runAsUser;
  /// a base64 encoded string containing the contents of the JSON in the seccomp profile
  final String? seccompProfile;

  /// Creates a new [SecurityContextDefinitionResponse].
  /// [allowPrivilegeEscalation] A boolean value indicating whether the init process can elevate its privileges
  /// [capabilities] The capabilities to add or drop from a container.
  /// [privileged] The flag to determine if the container permissions is elevated to Privileged.
  /// [runAsGroup] Sets the User GID for the container.
  /// [runAsUser] Sets the User UID for the container.
  /// [seccompProfile] a base64 encoded string containing the contents of the JSON in the seccomp profile
  SecurityContextDefinitionResponse({
    this.allowPrivilegeEscalation,
    this.capabilities,
    this.privileged,
    this.runAsGroup,
    this.runAsUser,
    this.seccompProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPrivilegeEscalation': ?allowPrivilegeEscalation,
      'capabilities': ?capabilities == null ? null : capabilities!.toMap(),
      'privileged': ?privileged,
      'runAsGroup': ?runAsGroup,
      'runAsUser': ?runAsUser,
      'seccompProfile': ?seccompProfile,
    };
  }

  factory SecurityContextDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return SecurityContextDefinitionResponse(
      allowPrivilegeEscalation: map['allowPrivilegeEscalation'] == null ? null : map['allowPrivilegeEscalation'] as bool,
      capabilities: map['capabilities'] == null ? null : SecurityContextCapabilitiesDefinitionResponse.fromMap((map['capabilities'] as Map).cast<String, dynamic>()),
      privileged: map['privileged'] == null ? null : map['privileged'] as bool,
      runAsGroup: map['runAsGroup'] == null ? null : map['runAsGroup'] as int,
      runAsUser: map['runAsUser'] == null ? null : map['runAsUser'] as int,
      seccompProfile: map['seccompProfile'] == null ? null : map['seccompProfile'] as String,
    );
  }
}

