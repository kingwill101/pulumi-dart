// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_principal_info_service_account.dart';

/// PrincipalInfo represents an Identity oneof.
class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo {
  /// A GCP service account.
  final GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount?
      serviceAccount;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo].
  /// [serviceAccount] A GCP service account.
  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo({
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

  factory GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo(
      serviceAccount: map['serviceAccount'] == null
          ? null
          : GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount
              .fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
    );
  }
}
