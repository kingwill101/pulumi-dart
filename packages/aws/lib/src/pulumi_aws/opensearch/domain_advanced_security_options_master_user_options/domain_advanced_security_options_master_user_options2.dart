// ignore_for_file: unused_element, unnecessary_cast

class DomainAdvancedSecurityOptionsMasterUserOptions2 {
  /// ARN for the main user. Only specify if `internal_user_database_enabled` is not set or set to `false`.
  final String? masterUserArn;

  /// Main user's username, which is stored in the Amazon OpenSearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  final String? masterUserName;

  /// Main user's password, which is stored in the Amazon OpenSearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  final String? masterUserPassword;

  DomainAdvancedSecurityOptionsMasterUserOptions2({
    this.masterUserArn,
    this.masterUserName,
    this.masterUserPassword,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final masterUserArnValue = masterUserArn;
    if (masterUserArnValue != null) {
      map['masterUserArn'] = masterUserArnValue;
    }
    final masterUserNameValue = masterUserName;
    if (masterUserNameValue != null) {
      map['masterUserName'] = masterUserNameValue;
    }
    final masterUserPasswordValue = masterUserPassword;
    if (masterUserPasswordValue != null) {
      map['masterUserPassword'] = masterUserPasswordValue;
    }
    return map;
  }

  factory DomainAdvancedSecurityOptionsMasterUserOptions2.fromMap(
      Map<String, dynamic> map) {
    return DomainAdvancedSecurityOptionsMasterUserOptions2(
      masterUserArn:
          map['masterUserArn'] == null ? null : map['masterUserArn'] as String,
      masterUserName: map['masterUserName'] == null
          ? null
          : map['masterUserName'] as String,
      masterUserPassword: map['masterUserPassword'] == null
          ? null
          : map['masterUserPassword'] as String,
    );
  }
}
