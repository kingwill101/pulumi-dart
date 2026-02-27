// ignore_for_file: unused_element, unnecessary_cast

import 'service_account_response_beyondcorp_v1alpha.dart';

/// PrincipalInfo represents an Identity oneof.
class PrincipalInfoResponse {
  /// A GCP service account.
  final ServiceAccountResponseBeyondcorpV1alpha serviceAccount;

  PrincipalInfoResponse({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccount'] = serviceAccount.toMap();
    return map;
  }

  factory PrincipalInfoResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalInfoResponse(
      serviceAccount: ServiceAccountResponseBeyondcorpV1alpha.fromMap(
          (map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
