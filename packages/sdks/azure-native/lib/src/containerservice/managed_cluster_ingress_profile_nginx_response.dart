// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedClusterIngressProfileNginxResponse {
  /// Ingress type for the default NginxIngressController custom resource
  final pulumi.Input<String>? defaultIngressControllerType;

  /// Creates a new [ManagedClusterIngressProfileNginxResponse].
  /// [defaultIngressControllerType] Ingress type for the default NginxIngressController custom resource
  const ManagedClusterIngressProfileNginxResponse({
    this.defaultIngressControllerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultIngressControllerType': ?defaultIngressControllerType,
    };
  }

  factory ManagedClusterIngressProfileNginxResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIngressProfileNginxResponse(
      defaultIngressControllerType: (() { final guardedValue = map['defaultIngressControllerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

