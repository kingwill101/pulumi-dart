// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainIdentityCenterOption {
  /// Boolean whether IAM Identity Center is enabled for API access.
  final pulumi.Input<bool> enabledApiAccess;
  /// ARN of the IAM Identity Center instance to create an OpenSearch UI application that uses IAM Identity Center for authentication.
  final pulumi.Input<String> identityCenterInstanceArn;
  /// Attribute that contains the backend role identifier (such as group name or group ID) in IAM Identity Center.
  final pulumi.Input<String> rolesKey;
  /// Attribute that contains the subject identifier (such as username, user ID, or email) in IAM Identity Center.
  final pulumi.Input<String> subjectKey;

  /// Creates a new [GetDomainIdentityCenterOption].
  /// [enabledApiAccess] Boolean whether IAM Identity Center is enabled for API access.
  /// [identityCenterInstanceArn] ARN of the IAM Identity Center instance to create an OpenSearch UI application that uses IAM Identity Center for authentication.
  /// [rolesKey] Attribute that contains the backend role identifier (such as group name or group ID) in IAM Identity Center.
  /// [subjectKey] Attribute that contains the subject identifier (such as username, user ID, or email) in IAM Identity Center.
  const GetDomainIdentityCenterOption({
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
      enabledApiAccess: pulumi.Input.fromValue(map['enabledApiAccess'] as bool),
      identityCenterInstanceArn: pulumi.Input.fromValue(map['identityCenterInstanceArn'] as String),
      rolesKey: pulumi.Input.fromValue(map['rolesKey'] as String),
      subjectKey: pulumi.Input.fromValue(map['subjectKey'] as String),
    );
  }
}
