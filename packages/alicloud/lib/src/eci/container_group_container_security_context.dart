// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_container_security_context_capability.dart';

class ContainerGroupContainerSecurityContext {
  final List<ContainerGroupContainerSecurityContextCapability>? capabilities;
  /// Specifies whether to give extended privileges to this container. Default value: `false`. Valid values: `true` and `false`.
  final bool? privileged;
  final int? runAsUser;

  /// Creates a new [ContainerGroupContainerSecurityContext].
  /// [capabilities] Optional.
  /// [privileged] Specifies whether to give extended privileges to this container. Default value: `false`. Valid values: `true` and `false`.
  /// [runAsUser] Optional.
  ContainerGroupContainerSecurityContext({
    this.capabilities,
    this.privileged,
    this.runAsUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities == null ? null : pulumi.Input.encodeList<ContainerGroupContainerSecurityContextCapability, Map<String, dynamic>>(capabilities!, (value) => value.toMap()),
      'privileged': ?privileged,
      'runAsUser': ?runAsUser,
    };
  }

  factory ContainerGroupContainerSecurityContext.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerSecurityContext(
      capabilities: map['capabilities'] == null ? null : pulumi.Input.decodeList<ContainerGroupContainerSecurityContextCapability>(map['capabilities'], (value) => ContainerGroupContainerSecurityContextCapability.fromMap((value as Map).cast<String, dynamic>())),
      privileged: map['privileged'] == null ? null : map['privileged'] as bool,
      runAsUser: map['runAsUser'] == null ? null : map['runAsUser'] as int,
    );
  }
}

