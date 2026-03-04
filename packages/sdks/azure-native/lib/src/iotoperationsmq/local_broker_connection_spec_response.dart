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
      'authentication':
          ?pulumi.Input.mapOptionalInputValue<
            LocalBrokerAuthenticationMethodsResponse,
            Map<String, dynamic>
          >(authentication, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'tls':
          ?pulumi.Input.mapOptionalInputValue<
            LocalBrokerConnectionTlsResponse,
            Map<String, dynamic>
          >(tls, (value) => value.toMap()),
    };
  }

  factory LocalBrokerConnectionSpecResponse.fromMap(Map<String, dynamic> map) {
    return LocalBrokerConnectionSpecResponse(
      authentication: (() {
        final guardedValue = map['authentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LocalBrokerAuthenticationMethodsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tls: (() {
        final guardedValue = map['tls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LocalBrokerConnectionTlsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
