// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualClusterContainerProviderInfoEksInfo {
  /// The namespace where the EMR Containers cluster is running
  final pulumi.Input<String>? namespace;

  /// Creates a new [VirtualClusterContainerProviderInfoEksInfo].
  /// [namespace] The namespace where the EMR Containers cluster is running
  const VirtualClusterContainerProviderInfoEksInfo({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
    };
  }

  factory VirtualClusterContainerProviderInfoEksInfo.fromMap(Map<String, dynamic> map) {
    return VirtualClusterContainerProviderInfoEksInfo(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

