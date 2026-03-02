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
  MainPrincipal({
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
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      login: map['login'] == null ? null : (map['login'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

