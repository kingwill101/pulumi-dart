// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_principal_info_service_account_response.dart';

/// PrincipalInfo represents an Identity oneof.
class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoResponse {
  /// A GCP service account.
  final GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccountResponse
      serviceAccount;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoResponse].
  /// [serviceAccount] A GCP service account.
  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoResponse({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAccount'] = serviceAccount.toMap();
    return map;
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoResponse(
      serviceAccount:
          GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccountResponse
              .fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
