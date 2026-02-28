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
  GetBillingServiceAccountArgs({
    String? id,
  }) : id = pulumi.Input.asOptionalInput<String>(id);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GetBillingServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingServiceAccountArgs(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
