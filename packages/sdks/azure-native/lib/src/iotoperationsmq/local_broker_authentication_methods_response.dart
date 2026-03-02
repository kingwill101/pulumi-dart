// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_broker_kubernetes_authentication_response.dart';

/// Mqtt Local Broker Authentication details. Only one method at a time is supported. Default - kubernetes authentication
class LocalBrokerAuthenticationMethodsResponse {
  /// Kubernetes local broker authentication method.
  final pulumi.Input<LocalBrokerKubernetesAuthenticationResponse> kubernetes;

  /// Creates a new [LocalBrokerAuthenticationMethodsResponse].
  /// [kubernetes] Kubernetes local broker authentication method.
  LocalBrokerAuthenticationMethodsResponse({
    required this.kubernetes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetes': pulumi.Input.mapInputValue<LocalBrokerKubernetesAuthenticationResponse, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
    };
  }

  factory LocalBrokerAuthenticationMethodsResponse.fromMap(Map<String, dynamic> map) {
    return LocalBrokerAuthenticationMethodsResponse(
      kubernetes: (LocalBrokerKubernetesAuthenticationResponse.fromMap((map['kubernetes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

