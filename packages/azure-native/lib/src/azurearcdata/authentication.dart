// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entra_authentication.dart';

/// Authentication related configuration for the SQL Server Instance.
class Authentication {
  /// Mode of authentication in SqlServer.
  final String? mode;
  /// Entra Authentication configuration for the SQL Server Instance.
  final List<EntraAuthentication>? sqlServerEntraIdentity;

  /// Creates a new [Authentication].
  /// [mode] Mode of authentication in SqlServer.
  /// [sqlServerEntraIdentity] Entra Authentication configuration for the SQL Server Instance.
  Authentication({
    this.mode,
    this.sqlServerEntraIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'sqlServerEntraIdentity': ?sqlServerEntraIdentity == null ? null : pulumi.Input.encodeList<EntraAuthentication, Map<String, dynamic>>(sqlServerEntraIdentity!, (value) => value.toMap()),
    };
  }

  factory Authentication.fromMap(Map<String, dynamic> map) {
    return Authentication(
      mode: map['mode'] == null ? null : map['mode'] as String,
      sqlServerEntraIdentity: map['sqlServerEntraIdentity'] == null ? null : pulumi.Input.decodeList<EntraAuthentication>(map['sqlServerEntraIdentity'], (value) => EntraAuthentication.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

