// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_created_acr_account.dart';

/// Details of ACR account to be used for the Registry
class AcrDetails {
  /// Details of system created ACR account to be used for the Registry
  final pulumi.Input<SystemCreatedAcrAccount>? systemCreatedAcrAccount;

  /// Creates a new [AcrDetails].
  /// [systemCreatedAcrAccount] Details of system created ACR account to be used for the Registry
  AcrDetails({
    this.systemCreatedAcrAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemCreatedAcrAccount': ?pulumi.Input.mapOptionalInputValue<SystemCreatedAcrAccount, Map<String, dynamic>>(systemCreatedAcrAccount, (value) => value.toMap()),
    };
  }

  factory AcrDetails.fromMap(Map<String, dynamic> map) {
    return AcrDetails(
      systemCreatedAcrAccount: map['systemCreatedAcrAccount'] == null ? null : (SystemCreatedAcrAccount.fromMap((map['systemCreatedAcrAccount']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

