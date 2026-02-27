// ignore_for_file: unused_element, unnecessary_cast

import 'service_account_beyondcorp_v1alpha.dart';

/// PrincipalInfo represents an Identity oneof.
class PrincipalInfo {
  /// A GCP service account.
  final ServiceAccountBeyondcorpV1alpha? serviceAccount;

  PrincipalInfo({
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue.toMap();
    }
    return map;
  }

  factory PrincipalInfo.fromMap(Map<String, dynamic> map) {
    return PrincipalInfo(
      serviceAccount: map['serviceAccount'] == null
          ? null
          : ServiceAccountBeyondcorpV1alpha.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
