// ignore_for_file: unused_element, unnecessary_cast

class AssumeRoles {
  /// The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.
  final String? duration;

  /// A unique identifier that might be required when you assume a role in another account.
  final String? externalId;

  /// IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.
  final String? policy;

  /// Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.
  final List<String>? policyArns;

  /// Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.
  final String? roleArn;

  /// An identifier for the assumed role session.
  final String? sessionName;

  /// Source identity specified by the principal assuming the role.
  final String? sourceIdentity;

  /// Assume role session tags.
  final Map<String, String>? tags;

  /// Assume role session tag keys to pass to any subsequent sessions.
  final List<String>? transitiveTagKeys;

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
    final map = <String, dynamic>{};
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final policyArnsValue = policyArns;
    if (policyArnsValue != null) {
      map['policyArns'] = policyArnsValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final sessionNameValue = sessionName;
    if (sessionNameValue != null) {
      map['sessionName'] = sessionNameValue;
    }
    final sourceIdentityValue = sourceIdentity;
    if (sourceIdentityValue != null) {
      map['sourceIdentity'] = sourceIdentityValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitiveTagKeysValue = transitiveTagKeys;
    if (transitiveTagKeysValue != null) {
      map['transitiveTagKeys'] = transitiveTagKeysValue;
    }
    return map;
  }

  factory AssumeRoles.fromMap(Map<String, dynamic> map) {
    return AssumeRoles(
      duration: map['duration'] == null ? null : map['duration'] as String,
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      policyArns: map['policyArns'] == null
          ? null
          : (map['policyArns'] as List).cast<String>(),
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      sessionName:
          map['sessionName'] == null ? null : map['sessionName'] as String,
      sourceIdentity: map['sourceIdentity'] == null
          ? null
          : map['sourceIdentity'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitiveTagKeys: map['transitiveTagKeys'] == null
          ? null
          : (map['transitiveTagKeys'] as List).cast<String>(),
    );
  }
}
