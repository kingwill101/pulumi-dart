// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A main principal.
class MainPrincipal {
  /// Application Id of the main principal.
  final pulumi.Input<String>? applicationId;
  /// Login name of the main principal.
  final pulumi.Input<String>? login;
  /// Object Id of the main principal.
  final pulumi.Input<String>? objectId;
  /// Principal type of the main principal.
  final pulumi.Input<String>? principalType;
  /// Tenant Id of the main principal.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [MainPrincipal].
  /// [applicationId] Application Id of the main principal.
  /// [login] Login name of the main principal.
  /// [objectId] Object Id of the main principal.
  /// [principalType] Principal type of the main principal.
  /// [tenantId] Tenant Id of the main principal.
  const MainPrincipal({
    this.applicationId,
    this.login,
    this.objectId,
    this.principalType,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'login': ?login,
      'objectId': ?objectId,
      'principalType': ?principalType,
      'tenantId': ?tenantId,
    };
  }

  factory MainPrincipal.fromMap(Map<String, dynamic> map) {
    return MainPrincipal(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
