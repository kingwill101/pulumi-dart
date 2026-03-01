// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_init_container_security_context_capability.dart';

class ContainerGroupInitContainerSecurityContext {
  final List<ContainerGroupInitContainerSecurityContextCapability>? capabilities;
  final int? runAsUser;

  /// Creates a new [ContainerGroupInitContainerSecurityContext].
  /// [capabilities] Optional.
  /// [runAsUser] Optional.
  ContainerGroupInitContainerSecurityContext({
    this.capabilities,
    this.runAsUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities == null ? null : pulumi.Input.encodeList<ContainerGroupInitContainerSecurityContextCapability, Map<String, dynamic>>(capabilities!, (value) => value.toMap()),
      'runAsUser': ?runAsUser,
    };
  }

  factory ContainerGroupInitContainerSecurityContext.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainerSecurityContext(
      capabilities: map['capabilities'] == null ? null : pulumi.Input.decodeList<ContainerGroupInitContainerSecurityContextCapability>(map['capabilities'], (value) => ContainerGroupInitContainerSecurityContextCapability.fromMap((value as Map).cast<String, dynamic>())),
      runAsUser: map['runAsUser'] == null ? null : map['runAsUser'] as int,
    );
  }
}

