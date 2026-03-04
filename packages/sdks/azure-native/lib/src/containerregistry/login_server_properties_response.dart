// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_properties_response.dart';

/// The login server properties of the connected registry.
class LoginServerPropertiesResponse {
  /// The host of the connected registry. Can be FQDN or IP.
  final pulumi.Input<String> host;

  /// The TLS properties of the connected registry login server.
  final pulumi.Input<TlsPropertiesResponse> tls;

  /// Creates a new [LoginServerPropertiesResponse].
  /// [host] The host of the connected registry. Can be FQDN or IP.
  /// [tls] The TLS properties of the connected registry login server.
  LoginServerPropertiesResponse({required this.host, required this.tls});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'tls':
          pulumi.Input.mapInputValue<
            TlsPropertiesResponse,
            Map<String, dynamic>
          >(tls, (value) => value.toMap()),
    };
  }

  factory LoginServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoginServerPropertiesResponse(
      host: pulumi.Input.fromValue(map['host'] as String),
      tls: pulumi.Input.fromValue(
        TlsPropertiesResponse.fromMap(
          (map['tls']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
