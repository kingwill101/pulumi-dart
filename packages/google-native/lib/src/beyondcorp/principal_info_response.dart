// ignore_for_file: unused_element, unnecessary_cast

import 'service_account_response.dart';

/// PrincipalInfo represents an Identity oneof.
class PrincipalInfoResponse {
  /// A GCP service account.
  final ServiceAccountResponse serviceAccount;

  /// Creates a new [PrincipalInfoResponse].
  /// [serviceAccount] A GCP service account.
  PrincipalInfoResponse({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': serviceAccount.toMap(),
    };
  }

  factory PrincipalInfoResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalInfoResponse(
      serviceAccount: ServiceAccountResponse.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}

