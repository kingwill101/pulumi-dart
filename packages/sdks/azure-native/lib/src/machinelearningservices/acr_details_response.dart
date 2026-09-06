// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_created_acr_account_response.dart';

/// Details of ACR account to be used for the Registry
class AcrDetailsResponse {
  /// Details of system created ACR account to be used for the Registry
  final pulumi.Input<SystemCreatedAcrAccountResponse?>? systemCreatedAcrAccount;

  /// Creates a new [AcrDetailsResponse].
  /// [systemCreatedAcrAccount] Details of system created ACR account to be used for the Registry
  const AcrDetailsResponse({
    this.systemCreatedAcrAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemCreatedAcrAccount': ?pulumi.Input.mapOptionalInputValue<SystemCreatedAcrAccountResponse, Map<String, dynamic>>(systemCreatedAcrAccount, (value) => value.toMap()),
    };
  }

  factory AcrDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AcrDetailsResponse(
      systemCreatedAcrAccount: (() { final guardedValue = map['systemCreatedAcrAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemCreatedAcrAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
