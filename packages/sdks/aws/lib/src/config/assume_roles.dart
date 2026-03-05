// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssumeRoles {
  /// The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.
  final pulumi.Input<String>? duration;
  /// A unique identifier that might be required when you assume a role in another account.
  final pulumi.Input<String>? externalId;
  /// IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.
  final pulumi.Input<String>? policy;
  /// Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.
  final pulumi.Input<List<String>>? policyArns;
  /// Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.
  final pulumi.Input<String>? roleArn;
  /// An identifier for the assumed role session.
  final pulumi.Input<String>? sessionName;
  /// Source identity specified by the principal assuming the role.
  final pulumi.Input<String>? sourceIdentity;
  /// Assume role session tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Assume role session tag keys to pass to any subsequent sessions.
  final pulumi.Input<List<String>>? transitiveTagKeys;

  /// Creates a new [AssumeRoles].
  /// [duration] The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.
  /// [externalId] A unique identifier that might be required when you assume a role in another account.
  /// [policy] IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.
  /// [policyArns] Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.
  /// [roleArn] Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.
  /// [sessionName] An identifier for the assumed role session.
  /// [sourceIdentity] Source identity specified by the principal assuming the role.
  /// [tags] Assume role session tags.
  /// [transitiveTagKeys] Assume role session tag keys to pass to any subsequent sessions.
  AssumeRoles({
    this.duration,
    this.externalId,
    this.policy,
    this.policyArns,
    this.roleArn,
    this.sessionName,
    this.sourceIdentity,
    this.tags,
    this.transitiveTagKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'externalId': ?externalId,
      'policy': ?policy,
      'policyArns': ?policyArns,
      'roleArn': ?roleArn,
      'sessionName': ?sessionName,
      'sourceIdentity': ?sourceIdentity,
      'tags': ?tags,
      'transitiveTagKeys': ?transitiveTagKeys,
    };
  }

  factory AssumeRoles.fromMap(Map<String, dynamic> map) {
    return AssumeRoles(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArns: (() { final guardedValue = map['policyArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionName: (() { final guardedValue = map['sessionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIdentity: (() { final guardedValue = map['sourceIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitiveTagKeys: (() { final guardedValue = map['transitiveTagKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

