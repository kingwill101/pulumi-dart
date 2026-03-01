// ignore_for_file: unused_element, unnecessary_cast

import 'local_broker_authentication_methods_response.dart';
import 'local_broker_connection_tls_response.dart';

/// Mqtt Local Broker ConnectionSpec details
class LocalBrokerConnectionSpecResponse {
  /// The authentication methods for LocalBroker connection. NOTE - Enum only one method at a time is supported.
  final LocalBrokerAuthenticationMethodsResponse? authentication;
  /// The endpoint of local broker to connect to.
  final String? endpoint;
  /// TLS details for Local broker Connection.
  final LocalBrokerConnectionTlsResponse? tls;

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
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'endpoint': ?endpoint,
      'tls': ?tls == null ? null : tls!.toMap(),
    };
  }

  factory LocalBrokerConnectionSpecResponse.fromMap(Map<String, dynamic> map) {
    return LocalBrokerConnectionSpecResponse(
      authentication: map['authentication'] == null ? null : LocalBrokerAuthenticationMethodsResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      tls: map['tls'] == null ? null : LocalBrokerConnectionTlsResponse.fromMap((map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}

