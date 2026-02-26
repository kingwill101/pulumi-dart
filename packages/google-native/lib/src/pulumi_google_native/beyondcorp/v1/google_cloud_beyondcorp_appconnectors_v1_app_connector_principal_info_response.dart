// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_beyondcorp_appconnectors_v1_app_connector_principal_info_service_account_response.dart';

/// PrincipalInfo represents an Identity oneof.
class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoResponse {
  /// A GCP service account.
  final GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse
      serviceAccount;

  GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoResponse({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccount'] = serviceAccount.toMap();
    return map;
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoResponse(
      serviceAccount:
          GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse
              .fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
