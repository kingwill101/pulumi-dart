// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAdvancedSecurityOptionsMasterUserOptions {
  /// ARN for the main user. Only specify if `internal_user_database_enabled` is not set or set to `false`.
  final pulumi.Input<String>? masterUserArn;
  /// Main user's username, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  final pulumi.Input<String>? masterUserName;
  /// Main user's password, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  final pulumi.Input<String>? masterUserPassword;

  /// Creates a new [DomainAdvancedSecurityOptionsMasterUserOptions].
  /// [masterUserArn] ARN for the main user. Only specify if `internal_user_database_enabled` is not set or set to `false`.
  /// [masterUserName] Main user's username, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  /// [masterUserPassword] Main user's password, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`.
  const DomainAdvancedSecurityOptionsMasterUserOptions({
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
      masterUserArn: (() { final guardedValue = map['masterUserArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUserName: (() { final guardedValue = map['masterUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUserPassword: (() { final guardedValue = map['masterUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

