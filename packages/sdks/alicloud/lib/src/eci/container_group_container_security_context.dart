// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_container_security_context_capability.dart';

class ContainerGroupContainerSecurityContext {
  final pulumi.Input<List<ContainerGroupContainerSecurityContextCapability>>? capabilities;
  /// Specifies whether to give extended privileges to this container. Default value: `false`. Valid values: `true` and `false`.
  final pulumi.Input<bool>? privileged;
  final pulumi.Input<int>? runAsUser;

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
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupContainerSecurityContextCapability>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<ContainerGroupContainerSecurityContextCapability, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privileged': ?privileged,
      'runAsUser': ?runAsUser,
    };
  }

  factory ContainerGroupContainerSecurityContext.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerSecurityContext(
      capabilities: map['capabilities'] == null ? null : (pulumi.Input.decodeList<ContainerGroupContainerSecurityContextCapability>(map['capabilities'], (value) => ContainerGroupContainerSecurityContextCapability.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privileged: map['privileged'] == null ? null : (map['privileged'] as bool).input(),
      runAsUser: map['runAsUser'] == null ? null : (map['runAsUser'] as int).input(),
    );
  }
}

