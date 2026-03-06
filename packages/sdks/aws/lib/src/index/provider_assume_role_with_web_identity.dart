// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderAssumeRoleWithWebIdentity {
  /// The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.
  final pulumi.Input<String>? duration;
  /// IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.
  final pulumi.Input<String>? policy;
  /// Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.
  final pulumi.Input<List<String>>? policyArns;
  /// Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.
  final pulumi.Input<String>? roleArn;
  /// An identifier for the assumed role session.
  final pulumi.Input<String>? sessionName;
  final pulumi.Input<String>? webIdentityToken;
  final pulumi.Input<String>? webIdentityTokenFile;

  /// Creates a new [ProviderAssumeRoleWithWebIdentity].
  /// [duration] The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.
  /// [policy] IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.
  /// [policyArns] Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.
  /// [roleArn] Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.
  /// [sessionName] An identifier for the assumed role session.
  /// [webIdentityToken] Optional.
  /// [webIdentityTokenFile] Optional.
  const ProviderAssumeRoleWithWebIdentity({
    this.duration,
    this.policy,
    this.policyArns,
    this.roleArn,
    this.sessionName,
    this.webIdentityToken,
    this.webIdentityTokenFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'policy': ?policy,
      'policyArns': ?policyArns,
      'roleArn': ?roleArn,
      'sessionName': ?sessionName,
      'webIdentityToken': ?webIdentityToken,
      'webIdentityTokenFile': ?webIdentityTokenFile,
    };
  }

  factory ProviderAssumeRoleWithWebIdentity.fromMap(Map<String, dynamic> map) {
    return ProviderAssumeRoleWithWebIdentity(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArns: (() { final guardedValue = map['policyArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionName: (() { final guardedValue = map['sessionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webIdentityToken: (() { final guardedValue = map['webIdentityToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webIdentityTokenFile: (() { final guardedValue = map['webIdentityTokenFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

