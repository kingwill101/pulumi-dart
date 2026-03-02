// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_broker_authentication_methods.dart';
import 'local_broker_connection_tls.dart';

/// Mqtt Local Broker ConnectionSpec details
class LocalBrokerConnectionSpec {
  /// The authentication methods for LocalBroker connection. NOTE - Enum only one method at a time is supported.
  final pulumi.Input<LocalBrokerAuthenticationMethods>? authentication;
  /// The endpoint of local broker to connect to.
  final pulumi.Input<String>? endpoint;
  /// TLS details for Local broker Connection.
  final pulumi.Input<LocalBrokerConnectionTls>? tls;

  /// Creates a new [LocalBrokerConnectionSpec].
  /// [authentication] The authentication methods for LocalBroker connection. NOTE - Enum only one method at a time is supported.
  /// [endpoint] The endpoint of local broker to connect to.
  /// [tls] TLS details for Local broker Connection.
  LocalBrokerConnectionSpec({
    this.authentication,
    this.endpoint,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<LocalBrokerAuthenticationMethods, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'tls': ?pulumi.Input.mapOptionalInputValue<LocalBrokerConnectionTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory LocalBrokerConnectionSpec.fromMap(Map<String, dynamic> map) {
    return LocalBrokerConnectionSpec(
      authentication: map['authentication'] == null ? null : (LocalBrokerAuthenticationMethods.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      tls: map['tls'] == null ? null : (LocalBrokerConnectionTls.fromMap((map['tls'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

