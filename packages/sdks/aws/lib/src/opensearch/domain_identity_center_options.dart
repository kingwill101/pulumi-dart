// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainIdentityCenterOptions {
  final pulumi.Input<bool>? enabledApiAccess;
  final pulumi.Input<String>? identityCenterInstanceArn;
  final pulumi.Input<String>? rolesKey;
  final pulumi.Input<String>? subjectKey;

  /// Creates a new [DomainIdentityCenterOptions].
  /// [enabledApiAccess] Optional.
  /// [identityCenterInstanceArn] Optional.
  /// [rolesKey] Optional.
  /// [subjectKey] Optional.
  DomainIdentityCenterOptions({
    this.enabledApiAccess,
    this.identityCenterInstanceArn,
    this.rolesKey,
    this.subjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledApiAccess': ?enabledApiAccess,
      'identityCenterInstanceArn': ?identityCenterInstanceArn,
      'rolesKey': ?rolesKey,
      'subjectKey': ?subjectKey,
    };
  }

  factory DomainIdentityCenterOptions.fromMap(Map<String, dynamic> map) {
    return DomainIdentityCenterOptions(
      enabledApiAccess: (() { final guardedValue = map['enabledApiAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identityCenterInstanceArn: (() { final guardedValue = map['identityCenterInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolesKey: (() { final guardedValue = map['rolesKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectKey: (() { final guardedValue = map['subjectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

