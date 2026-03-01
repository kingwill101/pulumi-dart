// ignore_for_file: unused_element, unnecessary_cast


class ProviderAssumeRole {
  final String? externalId;
  /// The permissions applied when assuming a role. You cannot use, this policy to grant further permissions that are in excess to those of the, role that is being assumed.
  final String? policy;
  /// The ARN of a RAM role to assume prior to making API calls.
  final String roleArn;
  /// The time after which the established session for assuming role expires. Valid value range: [900-3600] seconds. Default to 0 (in this case Alicloud use own default value).
  final int? sessionExpiration;
  final String? sessionName;

  /// Creates a new [ProviderAssumeRole].
  /// [externalId] Optional.
  /// [policy] The permissions applied when assuming a role. You cannot use, this policy to grant further permissions that are in excess to those of the, role that is being assumed.
  /// [roleArn] The ARN of a RAM role to assume prior to making API calls.
  /// [sessionExpiration] The time after which the established session for assuming role expires. Valid value range: [900-3600] seconds. Default to 0 (in this case Alicloud use own default value).
  /// [sessionName] Optional.
  ProviderAssumeRole({
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

  factory ProviderAssumeRole.fromMap(Map<String, dynamic> map) {
    return ProviderAssumeRole(
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      roleArn: map['roleArn'] as String,
      sessionExpiration: map['sessionExpiration'] == null ? null : map['sessionExpiration'] as int,
      sessionName: map['sessionName'] == null ? null : map['sessionName'] as String,
    );
  }
}

