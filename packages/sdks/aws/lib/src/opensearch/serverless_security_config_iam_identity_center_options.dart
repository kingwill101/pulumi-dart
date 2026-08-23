// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessSecurityConfigIamIdentityCenterOptions {
  /// Group attribute for this IAM Identity Center integration. Valid values are `GroupId` and `GroupName`. Defaults to `GroupId`.
  final pulumi.Input<String>? groupAttribute;
  /// Amazon Resource Name (ARN) of the IAM Identity Center instance used to integrate with OpenSearch Serverless.
  final pulumi.Input<String> instanceArn;
  /// User attribute for this IAM Identity Center integration. Valid values are `UserId`, `UserName` and `Email`. Defaults to `UserId`.
  final pulumi.Input<String>? userAttribute;

  /// Creates a new [ServerlessSecurityConfigIamIdentityCenterOptions].
  /// [groupAttribute] Group attribute for this IAM Identity Center integration. Valid values are `GroupId` and `GroupName`. Defaults to `GroupId`.
  /// [instanceArn] Amazon Resource Name (ARN) of the IAM Identity Center instance used to integrate with OpenSearch Serverless.
  /// [userAttribute] User attribute for this IAM Identity Center integration. Valid values are `UserId`, `UserName` and `Email`. Defaults to `UserId`.
  const ServerlessSecurityConfigIamIdentityCenterOptions({
    this.groupAttribute,
    required this.instanceArn,
    this.userAttribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAttribute': ?groupAttribute,
      'instanceArn': instanceArn,
      'userAttribute': ?userAttribute,
    };
  }

  factory ServerlessSecurityConfigIamIdentityCenterOptions.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityConfigIamIdentityCenterOptions(
      groupAttribute: (() { final guardedValue = map['groupAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
      userAttribute: (() { final guardedValue = map['userAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
