// ignore_for_file: unused_element, unnecessary_cast

class DomainIdentityCenterOptions {
  final bool? enabledApiAccess;
  final String? identityCenterInstanceArn;
  final String? rolesKey;
  final String? subjectKey;

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
    final map = <String, dynamic>{};
    final enabledApiAccessValue = enabledApiAccess;
    if (enabledApiAccessValue != null) {
      map['enabledApiAccess'] = enabledApiAccessValue;
    }
    final identityCenterInstanceArnValue = identityCenterInstanceArn;
    if (identityCenterInstanceArnValue != null) {
      map['identityCenterInstanceArn'] = identityCenterInstanceArnValue;
    }
    final rolesKeyValue = rolesKey;
    if (rolesKeyValue != null) {
      map['rolesKey'] = rolesKeyValue;
    }
    final subjectKeyValue = subjectKey;
    if (subjectKeyValue != null) {
      map['subjectKey'] = subjectKeyValue;
    }
    return map;
  }

  factory DomainIdentityCenterOptions.fromMap(Map<String, dynamic> map) {
    return DomainIdentityCenterOptions(
      enabledApiAccess: map['enabledApiAccess'] == null
          ? null
          : map['enabledApiAccess'] as bool,
      identityCenterInstanceArn: map['identityCenterInstanceArn'] == null
          ? null
          : map['identityCenterInstanceArn'] as String,
      rolesKey: map['rolesKey'] == null ? null : map['rolesKey'] as String,
      subjectKey:
          map['subjectKey'] == null ? null : map['subjectKey'] as String,
    );
  }
}
