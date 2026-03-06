// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_billing_service_account_get_billing_service_account_args_doc}
/// Arguments for getBillingServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_index_get_billing_service_account_get_billing_service_account_args_doc}
class GetBillingServiceAccountArgs {
  /// ID of the AWS billing service account.
  final pulumi.Input<String>? id;

  /// Creates a new [GetBillingServiceAccountArgs].
  /// [id] ID of the AWS billing service account.
  const GetBillingServiceAccountArgs({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory GetBillingServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingServiceAccountArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

