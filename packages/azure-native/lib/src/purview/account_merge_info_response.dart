// ignore_for_file: unused_element, unnecessary_cast


/// The public Account Merge Info model.
class AccountMergeInfoResponse {
  /// The account location of the *other* account in the merge operation.
  final String accountLocation;
  /// The account name of the *other* account in the merge operation.
  final String accountName;
  /// The resource group name of the *other* account in the merge operation.
  final String accountResourceGroupName;
  /// The subscription id of the *other* account in the merge operation.
  final String accountSubscriptionId;
  /// The deprovisioned status of the account.
  /// Only applicable for the secondary account.
  final bool deprovisioned;
  /// The status of the merge operation.
  final String mergeStatus;
  /// The account's type for the merge operation.
  final String typeOfAccount;

  /// Creates a new [AccountMergeInfoResponse].
  /// [accountLocation] The account location of the *other* account in the merge operation.
  /// [accountName] The account name of the *other* account in the merge operation.
  /// [accountResourceGroupName] The resource group name of the *other* account in the merge operation.
  /// [accountSubscriptionId] The subscription id of the *other* account in the merge operation.
  /// [deprovisioned] The deprovisioned status of the account.
  /// [mergeStatus] The status of the merge operation.
  /// [typeOfAccount] The account's type for the merge operation.
  AccountMergeInfoResponse({
    required this.accountLocation,
    required this.accountName,
    required this.accountResourceGroupName,
    required this.accountSubscriptionId,
    required this.deprovisioned,
    required this.mergeStatus,
    required this.typeOfAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountLocation': accountLocation,
      'accountName': accountName,
      'accountResourceGroupName': accountResourceGroupName,
      'accountSubscriptionId': accountSubscriptionId,
      'deprovisioned': deprovisioned,
      'mergeStatus': mergeStatus,
      'typeOfAccount': typeOfAccount,
    };
  }

  factory AccountMergeInfoResponse.fromMap(Map<String, dynamic> map) {
    return AccountMergeInfoResponse(
      accountLocation: map['accountLocation'] as String,
      accountName: map['accountName'] as String,
      accountResourceGroupName: map['accountResourceGroupName'] as String,
      accountSubscriptionId: map['accountSubscriptionId'] as String,
      deprovisioned: map['deprovisioned'] as bool,
      mergeStatus: map['mergeStatus'] as String,
      typeOfAccount: map['typeOfAccount'] as String,
    );
  }
}

