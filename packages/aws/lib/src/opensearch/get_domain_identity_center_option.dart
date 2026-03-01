// ignore_for_file: unused_element, unnecessary_cast

class GetDomainIdentityCenterOption {
  /// Boolean whether IAM Identity Center is enabled for API access.
  final bool enabledApiAccess;

  /// ARN of the IAM Identity Center instance to create an OpenSearch UI application that uses IAM Identity Center for authentication.
  final String identityCenterInstanceArn;

  /// Attribute that contains the backend role identifier (such as group name or group ID) in IAM Identity Center.
  final String rolesKey;

  /// Attribute that contains the subject identifier (such as username, user ID, or email) in IAM Identity Center.
  final String subjectKey;

  /// Creates a new [GetDomainIdentityCenterOption].
  /// [enabledApiAccess] Boolean whether IAM Identity Center is enabled for API access.
  /// [identityCenterInstanceArn] ARN of the IAM Identity Center instance to create an OpenSearch UI application that uses IAM Identity Center for authentication.
  /// [rolesKey] Attribute that contains the backend role identifier (such as group name or group ID) in IAM Identity Center.
  /// [subjectKey] Attribute that contains the subject identifier (such as username, user ID, or email) in IAM Identity Center.
  GetDomainIdentityCenterOption({
    required this.enabledApiAccess,
    required this.identityCenterInstanceArn,
    required this.rolesKey,
    required this.subjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledApiAccess': enabledApiAccess,
      'identityCenterInstanceArn': identityCenterInstanceArn,
      'rolesKey': rolesKey,
      'subjectKey': subjectKey,
    };
  }

  factory GetDomainIdentityCenterOption.fromMap(Map<String, dynamic> map) {
    return GetDomainIdentityCenterOption(
      enabledApiAccess: map['enabledApiAccess'] as bool,
      identityCenterInstanceArn: map['identityCenterInstanceArn'] as String,
      rolesKey: map['rolesKey'] as String,
      subjectKey: map['subjectKey'] as String,
    );
  }
}
