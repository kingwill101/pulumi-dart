// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_broker_authentication_methods_response.dart';
import 'local_broker_connection_tls_response.dart';

/// Mqtt Local Broker ConnectionSpec details
class LocalBrokerConnectionSpecResponse {
  /// The authentication methods for LocalBroker connection. NOTE - Enum only one method at a time is supported.
  final pulumi.Input<LocalBrokerAuthenticationMethodsResponse>? authentication;
  /// The endpoint of local broker to connect to.
  final pulumi.Input<String>? endpoint;
  /// TLS details for Local broker Connection.
  final pulumi.Input<LocalBrokerConnectionTlsResponse>? tls;

  /// Creates a new [LocalBrokerConnectionSpecResponse].
  /// [authentication] The authentication methods for LocalBroker connection. NOTE - Enum only one method at a time is supported.
  /// [endpoint] The endpoint of local broker to connect to.
  /// [tls] TLS details for Local broker Connection.
  LocalBrokerConnectionSpecResponse({
    this.authentication,
    this.endpoint,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<LocalBrokerAuthenticationMethodsResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'tls': ?pulumi.Input.mapOptionalInputValue<LocalBrokerConnectionTlsResponse, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory LocalBrokerConnectionSpecResponse.fromMap(Map<String, dynamic> map) {
    return LocalBrokerConnectionSpecResponse(
      authentication: map['authentication'] == null ? null : (LocalBrokerAuthenticationMethodsResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      tls: map['tls'] == null ? null : (LocalBrokerConnectionTlsResponse.fromMap((map['tls'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

