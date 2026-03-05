// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_context_capabilities_definition_response.dart';

/// The security context for the container.
class SecurityContextDefinitionResponse {
  /// A boolean value indicating whether the init process can elevate its privileges
  final pulumi.Input<bool>? allowPrivilegeEscalation;
  /// The capabilities to add or drop from a container.
  final pulumi.Input<SecurityContextCapabilitiesDefinitionResponse>? capabilities;
  /// The flag to determine if the container permissions is elevated to Privileged.
  final pulumi.Input<bool>? privileged;
  /// Sets the User GID for the container.
  final pulumi.Input<int>? runAsGroup;
  /// Sets the User UID for the container.
  final pulumi.Input<int>? runAsUser;
  /// a base64 encoded string containing the contents of the JSON in the seccomp profile
  final pulumi.Input<String>? seccompProfile;

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
      'capabilities': ?pulumi.Input.mapOptionalInputValue<SecurityContextCapabilitiesDefinitionResponse, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'privileged': ?privileged,
      'runAsGroup': ?runAsGroup,
      'runAsUser': ?runAsUser,
      'seccompProfile': ?seccompProfile,
    };
  }

  factory SecurityContextDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return SecurityContextDefinitionResponse(
      allowPrivilegeEscalation: (() { final guardedValue = map['allowPrivilegeEscalation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityContextCapabilitiesDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privileged: (() { final guardedValue = map['privileged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runAsGroup: (() { final guardedValue = map['runAsGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      runAsUser: (() { final guardedValue = map['runAsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      seccompProfile: (() { final guardedValue = map['seccompProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

