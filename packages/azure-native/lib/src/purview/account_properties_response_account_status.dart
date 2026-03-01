// ignore_for_file: unused_element, unnecessary_cast

import 'account_status_response_error_details.dart';

/// Gets or sets the status of the account.
class AccountPropertiesResponseAccountStatus {
  /// Gets the account status code.
  final String accountProvisioningState;
  /// Gets the account error details.
  final AccountStatusResponseErrorDetails errorDetails;

  /// Creates a new [AccountPropertiesResponseAccountStatus].
  /// [accountProvisioningState] Gets the account status code.
  /// [errorDetails] Gets the account error details.
  AccountPropertiesResponseAccountStatus({
    required this.accountProvisioningState,
    required this.errorDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountProvisioningState': accountProvisioningState,
      'errorDetails': errorDetails.toMap(),
    };
  }

  factory AccountPropertiesResponseAccountStatus.fromMap(Map<String, dynamic> map) {
    return AccountPropertiesResponseAccountStatus(
      accountProvisioningState: map['accountProvisioningState'] as String,
      errorDetails: AccountStatusResponseErrorDetails.fromMap((map['errorDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

