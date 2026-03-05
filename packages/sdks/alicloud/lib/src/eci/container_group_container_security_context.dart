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
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupContainerSecurityContextCapability>(guardedValue, (value) => ContainerGroupContainerSecurityContextCapability.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privileged: (() { final guardedValue = map['privileged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runAsUser: (() { final guardedValue = map['runAsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

