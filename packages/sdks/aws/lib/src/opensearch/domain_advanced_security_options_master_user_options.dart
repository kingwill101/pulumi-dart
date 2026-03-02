// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAdvancedSecurityOptionsMasterUserOptions {
  /// ARN for the main user. Only specify if `internal_user_database_enabled` is not set or set to `false`.
  final pulumi.Input<String>? masterUserArn;
  /// Main user's username, which is stored in the Amazon OpenSearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  final pulumi.Input<String>? masterUserName;
  /// Main user's password, which is stored in the Amazon OpenSearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  final pulumi.Input<String>? masterUserPassword;

  /// Creates a new [DomainAdvancedSecurityOptionsMasterUserOptions].
  /// [masterUserArn] ARN for the main user. Only specify if `internal_user_database_enabled` is not set or set to `false`.
  /// [masterUserName] Main user's username, which is stored in the Amazon OpenSearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  /// [masterUserPassword] Main user's password, which is stored in the Amazon OpenSearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  DomainAdvancedSecurityOptionsMasterUserOptions({
    this.masterUserArn,
    this.masterUserName,
    this.masterUserPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'masterUserArn': ?masterUserArn,
      'masterUserName': ?masterUserName,
      'masterUserPassword': ?masterUserPassword,
    };
  }

  factory DomainAdvancedSecurityOptionsMasterUserOptions.fromMap(Map<String, dynamic> map) {
    return DomainAdvancedSecurityOptionsMasterUserOptions(
      masterUserArn: map['masterUserArn'] == null ? null : ((map['masterUserArn'] as String).input()).input(),
      masterUserName: map['masterUserName'] == null ? null : ((map['masterUserName'] as String).input()).input(),
      masterUserPassword: map['masterUserPassword'] == null ? null : ((map['masterUserPassword'] as String).input()).input(),
    );
  }
}

