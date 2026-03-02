// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedClusterIngressProfileNginx {
  /// Ingress type for the default NginxIngressController custom resource
  final pulumi.Input<String>? defaultIngressControllerType;

  /// Creates a new [ManagedClusterIngressProfileNginx].
  /// [defaultIngressControllerType] Ingress type for the default NginxIngressController custom resource
  ManagedClusterIngressProfileNginx({
    this.defaultIngressControllerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultIngressControllerType': ?defaultIngressControllerType,
    };
  }

  factory ManagedClusterIngressProfileNginx.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIngressProfileNginx(
      defaultIngressControllerType: map['defaultIngressControllerType'] == null ? null : (map['defaultIngressControllerType'] as String).input(),
    );
  }
}

