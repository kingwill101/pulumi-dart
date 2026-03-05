// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_security_context_sysctl.dart';

class ContainerGroupSecurityContext {
  /// Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. See `sysctl` below.
  final pulumi.Input<List<ContainerGroupSecurityContextSysctl>>? sysctls;

  /// Creates a new [ContainerGroupSecurityContext].
  /// [sysctls] Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. See `sysctl` below.
  ContainerGroupSecurityContext({
    this.sysctls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sysctls': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupSecurityContextSysctl>, List<Map<String, dynamic>>>(sysctls, (value) => pulumi.Input.encodeList<ContainerGroupSecurityContextSysctl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerGroupSecurityContext.fromMap(Map<String, dynamic> map) {
    return ContainerGroupSecurityContext(
      sysctls: (() { final guardedValue = map['sysctls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupSecurityContextSysctl>(guardedValue, (value) => ContainerGroupSecurityContextSysctl.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

