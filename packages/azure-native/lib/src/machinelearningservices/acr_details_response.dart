// ignore_for_file: unused_element, unnecessary_cast

import 'system_created_acr_account_response.dart';

/// Details of ACR account to be used for the Registry
class AcrDetailsResponse {
  /// Details of system created ACR account to be used for the Registry
  final SystemCreatedAcrAccountResponse? systemCreatedAcrAccount;

  /// Creates a new [AcrDetailsResponse].
  /// [systemCreatedAcrAccount] Details of system created ACR account to be used for the Registry
  AcrDetailsResponse({
    this.systemCreatedAcrAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemCreatedAcrAccount': ?systemCreatedAcrAccount == null ? null : systemCreatedAcrAccount!.toMap(),
    };
  }

  factory AcrDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AcrDetailsResponse(
      systemCreatedAcrAccount: map['systemCreatedAcrAccount'] == null ? null : SystemCreatedAcrAccountResponse.fromMap((map['systemCreatedAcrAccount'] as Map).cast<String, dynamic>()),
    );
  }
}

