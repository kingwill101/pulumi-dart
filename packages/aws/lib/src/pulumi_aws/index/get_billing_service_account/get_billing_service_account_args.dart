// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBillingServiceAccount.
class GetBillingServiceAccountArgs {
  /// ID of the AWS billing service account.
  final pulumi.Input<String>? id;

  GetBillingServiceAccountArgs({
    this.id,
  });

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
      id: pulumi.Input.asOptionalInput<String>(map['id']),
    );
  }
}
