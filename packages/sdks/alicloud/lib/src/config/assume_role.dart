// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssumeRole {
  final pulumi.Input<String>? externalId;
  /// The permissions applied when assuming a role. You cannot use, this policy to grant further permissions that are in excess to those of the, role that is being assumed.
  final pulumi.Input<String>? policy;
  /// The ARN of a RAM role to assume prior to making API calls.
  final pulumi.Input<String> roleArn;
  /// The time after which the established session for assuming role expires. Valid value range: [900-3600] seconds. Default to 0 (in this case Alicloud use own default value).
  final pulumi.Input<int>? sessionExpiration;
  final pulumi.Input<String>? sessionName;

  /// Creates a new [AssumeRole].
  /// [externalId] Optional.
  /// [policy] The permissions applied when assuming a role. You cannot use, this policy to grant further permissions that are in excess to those of the, role that is being assumed.
  /// [roleArn] The ARN of a RAM role to assume prior to making API calls.
  /// [sessionExpiration] The time after which the established session for assuming role expires. Valid value range: [900-3600] seconds. Default to 0 (in this case Alicloud use own default value).
  /// [sessionName] Optional.
  AssumeRole({
    this.externalId,
    this.policy,
    required this.roleArn,
    this.sessionExpiration,
    this.sessionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': ?externalId,
      'policy': ?policy,
      'roleArn': roleArn,
      'sessionExpiration': ?sessionExpiration,
      'sessionName': ?sessionName,
    };
  }

  factory AssumeRole.fromMap(Map<String, dynamic> map) {
    return AssumeRole(
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      sessionExpiration: (() { final guardedValue = map['sessionExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sessionName: (() { final guardedValue = map['sessionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

