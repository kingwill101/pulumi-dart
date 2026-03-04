// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_init_container_security_context_capability.dart';

class ContainerGroupInitContainerSecurityContext {
  final pulumi.Input<
    List<ContainerGroupInitContainerSecurityContextCapability>
  >?
  capabilities;
  final pulumi.Input<int>? runAsUser;

  /// Creates a new [ContainerGroupInitContainerSecurityContext].
  /// [capabilities] Optional.
  /// [runAsUser] Optional.
  ContainerGroupInitContainerSecurityContext({
    this.capabilities,
    this.runAsUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities':
          ?pulumi.Input.mapOptionalInputValue<
            List<ContainerGroupInitContainerSecurityContextCapability>,
            List<Map<String, dynamic>>
          >(
            capabilities,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerGroupInitContainerSecurityContextCapability,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'runAsUser': ?runAsUser,
    };
  }

  factory ContainerGroupInitContainerSecurityContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerGroupInitContainerSecurityContext(
      capabilities: (() {
        final guardedValue = map['capabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ContainerGroupInitContainerSecurityContextCapability
          >(
            guardedValue,
            (value) =>
                ContainerGroupInitContainerSecurityContextCapability.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      runAsUser: (() {
        final guardedValue = map['runAsUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
