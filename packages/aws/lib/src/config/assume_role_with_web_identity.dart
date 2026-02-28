// ignore_for_file: unused_element, unnecessary_cast

class AssumeRoleWithWebIdentity {
  /// The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.
  final String? duration;

  /// IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.
  final String? policy;

  /// Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.
  final List<String>? policyArns;

  /// Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.
  final String? roleArn;

  /// An identifier for the assumed role session.
  final String? sessionName;
  final String? webIdentityToken;
  final String? webIdentityTokenFile;

  /// Creates a new [AssumeRoleWithWebIdentity].
  /// [duration] The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.
  /// [policy] IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.
  /// [policyArns] Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.
  /// [roleArn] Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.
  /// [sessionName] An identifier for the assumed role session.
  /// [webIdentityToken] Optional.
  /// [webIdentityTokenFile] Optional.
  AssumeRoleWithWebIdentity({
    this.duration,
    this.policy,
    this.policyArns,
    this.roleArn,
    this.sessionName,
    this.webIdentityToken,
    this.webIdentityTokenFile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
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
    final webIdentityTokenValue = webIdentityToken;
    if (webIdentityTokenValue != null) {
      map['webIdentityToken'] = webIdentityTokenValue;
    }
    final webIdentityTokenFileValue = webIdentityTokenFile;
    if (webIdentityTokenFileValue != null) {
      map['webIdentityTokenFile'] = webIdentityTokenFileValue;
    }
    return map;
  }

  factory AssumeRoleWithWebIdentity.fromMap(Map<String, dynamic> map) {
    return AssumeRoleWithWebIdentity(
      duration: map['duration'] == null ? null : map['duration'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      policyArns: map['policyArns'] == null
          ? null
          : (map['policyArns'] as List).cast<String>(),
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      sessionName:
          map['sessionName'] == null ? null : map['sessionName'] as String,
      webIdentityToken: map['webIdentityToken'] == null
          ? null
          : map['webIdentityToken'] as String,
      webIdentityTokenFile: map['webIdentityTokenFile'] == null
          ? null
          : map['webIdentityTokenFile'] as String,
    );
  }
}
