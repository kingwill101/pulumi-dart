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
      duration: map['duration'] == null ? null : ((map['duration'] as String).input()).input(),
      externalId: map['externalId'] == null ? null : ((map['externalId'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      policyArns: map['policyArns'] == null ? null : (((map['policyArns'] as List).cast<String>()).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      sessionName: map['sessionName'] == null ? null : ((map['sessionName'] as String).input()).input(),
      sourceIdentity: map['sourceIdentity'] == null ? null : ((map['sourceIdentity'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      transitiveTagKeys: map['transitiveTagKeys'] == null ? null : (((map['transitiveTagKeys'] as List).cast<String>()).input()).input(),
    );
  }
}

