// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// cloud profile for AWS.
class AwsCloudProfileResponse {
  /// Account id for the AWS account.
  final pulumi.Input<String> accountId;
  /// List of AWS accounts which need to be excluded.
  final pulumi.Input<List<String>>? excludedAccounts;
  /// Boolean value that indicates whether the account is organizational or not. True represents organization account, whereas false represents a single account.
  final pulumi.Input<bool>? isOrganizationalAccount;

  /// Creates a new [AwsCloudProfileResponse].
  /// [accountId] Account id for the AWS account.
  /// [excludedAccounts] List of AWS accounts which need to be excluded.
  /// [isOrganizationalAccount] Boolean value that indicates whether the account is organizational or not. True represents organization account, whereas false represents a single account.
  AwsCloudProfileResponse({
    required this.accountId,
    this.excludedAccounts,
    this.isOrganizationalAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'excludedAccounts': ?excludedAccounts,
      'isOrganizationalAccount': ?isOrganizationalAccount,
    };
  }

  factory AwsCloudProfileResponse.fromMap(Map<String, dynamic> map) {
    return AwsCloudProfileResponse(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      excludedAccounts: (() { final guardedValue = map['excludedAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isOrganizationalAccount: (() { final guardedValue = map['isOrganizationalAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

