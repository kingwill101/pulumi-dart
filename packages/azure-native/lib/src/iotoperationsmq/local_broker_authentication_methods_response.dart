// ignore_for_file: unused_element, unnecessary_cast

import 'local_broker_kubernetes_authentication_response.dart';

/// Mqtt Local Broker Authentication details. Only one method at a time is supported. Default - kubernetes authentication
class LocalBrokerAuthenticationMethodsResponse {
  /// Kubernetes local broker authentication method.
  final LocalBrokerKubernetesAuthenticationResponse kubernetes;

  /// Creates a new [LocalBrokerAuthenticationMethodsResponse].
  /// [kubernetes] Kubernetes local broker authentication method.
  LocalBrokerAuthenticationMethodsResponse({
    required this.kubernetes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetes': kubernetes.toMap(),
    };
  }

  factory LocalBrokerAuthenticationMethodsResponse.fromMap(Map<String, dynamic> map) {
    return LocalBrokerAuthenticationMethodsResponse(
      kubernetes: LocalBrokerKubernetesAuthenticationResponse.fromMap((map['kubernetes'] as Map).cast<String, dynamic>()),
    );
  }
}

