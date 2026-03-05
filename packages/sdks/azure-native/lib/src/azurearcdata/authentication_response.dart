// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entra_authentication_response.dart';

/// Authentication related configuration for the SQL Server Instance.
class AuthenticationResponse {
  /// Mode of authentication in SqlServer.
  final pulumi.Input<String>? mode;
  /// Entra Authentication configuration for the SQL Server Instance.
  final pulumi.Input<List<EntraAuthenticationResponse>>? sqlServerEntraIdentity;

  /// Creates a new [AuthenticationResponse].
  /// [mode] Mode of authentication in SqlServer.
  /// [sqlServerEntraIdentity] Entra Authentication configuration for the SQL Server Instance.
  AuthenticationResponse({
    this.mode,
    this.sqlServerEntraIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'sqlServerEntraIdentity': ?pulumi.Input.mapOptionalInputValue<List<EntraAuthenticationResponse>, List<Map<String, dynamic>>>(sqlServerEntraIdentity, (value) => pulumi.Input.encodeList<EntraAuthenticationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlServerEntraIdentity: (() { final guardedValue = map['sqlServerEntraIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntraAuthenticationResponse>(guardedValue, (value) => EntraAuthenticationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

