// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_broker_kubernetes_authentication.dart';

/// Mqtt Local Broker Authentication details. Only one method at a time is supported. Default - kubernetes authentication
class LocalBrokerAuthenticationMethods {
  /// Kubernetes local broker authentication method.
  final pulumi.Input<LocalBrokerKubernetesAuthentication> kubernetes;

  /// Creates a new [LocalBrokerAuthenticationMethods].
  /// [kubernetes] Kubernetes local broker authentication method.
  LocalBrokerAuthenticationMethods({
    required this.kubernetes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetes': pulumi.Input.mapInputValue<LocalBrokerKubernetesAuthentication, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
    };
  }

  factory LocalBrokerAuthenticationMethods.fromMap(Map<String, dynamic> map) {
    return LocalBrokerAuthenticationMethods(
      kubernetes: (LocalBrokerKubernetesAuthentication.fromMap((map['kubernetes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

