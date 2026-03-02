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
      enabledApiAccess: map['enabledApiAccess'] == null ? null : (map['enabledApiAccess'] as bool).input(),
      identityCenterInstanceArn: map['identityCenterInstanceArn'] == null ? null : (map['identityCenterInstanceArn'] as String).input(),
      rolesKey: map['rolesKey'] == null ? null : (map['rolesKey'] as String).input(),
      subjectKey: map['subjectKey'] == null ? null : (map['subjectKey'] as String).input(),
    );
  }
}

