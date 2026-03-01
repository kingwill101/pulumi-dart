// ignore_for_file: unused_element, unnecessary_cast


/// cloud profile for AWS.
class AwsCloudProfile {
  /// Account id for the AWS account.
  final String accountId;
  /// List of AWS accounts which need to be excluded.
  final List<String>? excludedAccounts;
  /// Boolean value that indicates whether the account is organizational or not. True represents organization account, whereas false represents a single account.
  final bool? isOrganizationalAccount;

  /// Creates a new [AwsCloudProfile].
  /// [accountId] Account id for the AWS account.
  /// [excludedAccounts] List of AWS accounts which need to be excluded.
  /// [isOrganizationalAccount] Boolean value that indicates whether the account is organizational or not. True represents organization account, whereas false represents a single account.
  AwsCloudProfile({
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

  factory AwsCloudProfile.fromMap(Map<String, dynamic> map) {
    return AwsCloudProfile(
      accountId: map['accountId'] as String,
      excludedAccounts: map['excludedAccounts'] == null ? null : (map['excludedAccounts'] as List).cast<String>(),
      isOrganizationalAccount: map['isOrganizationalAccount'] == null ? null : map['isOrganizationalAccount'] as bool,
    );
  }
}

