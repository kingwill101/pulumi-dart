// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationIdentitySourceIdentityCenter {
  /// ARN of the IAM Identity Center application for this account access manager application.
  final pulumi.Input<String> applicationArn;
  /// ARN of the IAM Identity Center instance.
  final pulumi.Input<String> instanceArn;

  /// Creates a new [GetApplicationIdentitySourceIdentityCenter].
  /// [applicationArn] ARN of the IAM Identity Center application for this account access manager application.
  /// [instanceArn] ARN of the IAM Identity Center instance.
  const GetApplicationIdentitySourceIdentityCenter({
    required this.applicationArn,
    required this.instanceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'instanceArn': instanceArn,
    };
  }

  factory GetApplicationIdentitySourceIdentityCenter.fromMap(Map<String, dynamic> map) {
    return GetApplicationIdentitySourceIdentityCenter(
      applicationArn: pulumi.Input.fromValue(map['applicationArn'] as String),
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
    );
  }
}
