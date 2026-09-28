// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationIdentitySourceIdentityCenter {
  /// ARN of the IAM Identity Center application created for this account access manager application.
  final pulumi.Input<String?>? applicationArn;
  /// ARN of the IAM Identity Center instance.
  final pulumi.Input<String> instanceArn;

  /// Creates a new [ApplicationIdentitySourceIdentityCenter].
  /// [applicationArn] ARN of the IAM Identity Center application created for this account access manager application.
  /// [instanceArn] ARN of the IAM Identity Center instance.
  const ApplicationIdentitySourceIdentityCenter({
    this.applicationArn,
    required this.instanceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'instanceArn': instanceArn,
    };
  }

  factory ApplicationIdentitySourceIdentityCenter.fromMap(Map<String, dynamic> map) {
    return ApplicationIdentitySourceIdentityCenter(
      applicationArn: (() { final guardedValue = map['applicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
    );
  }
}
