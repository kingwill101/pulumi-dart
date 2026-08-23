// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entra_authentication.dart';

/// Authentication related configuration for the SQL Server Instance.
class Authentication {
  /// Mode of authentication in SqlServer.
  final pulumi.Input<String>? mode;
  /// Entra Authentication configuration for the SQL Server Instance.
  final pulumi.Input<List<EntraAuthentication>>? sqlServerEntraIdentity;

  /// Creates a new [Authentication].
  /// [mode] Mode of authentication in SqlServer.
  /// [sqlServerEntraIdentity] Entra Authentication configuration for the SQL Server Instance.
  const Authentication({
    this.mode,
    this.sqlServerEntraIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'sqlServerEntraIdentity': ?pulumi.Input.mapOptionalInputValue<List<EntraAuthentication>, List<Map<String, dynamic>>>(sqlServerEntraIdentity, (value) => pulumi.Input.encodeList<EntraAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Authentication.fromMap(Map<String, dynamic> map) {
    return Authentication(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlServerEntraIdentity: (() { final guardedValue = map['sqlServerEntraIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntraAuthentication>(guardedValue, (value) => EntraAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
