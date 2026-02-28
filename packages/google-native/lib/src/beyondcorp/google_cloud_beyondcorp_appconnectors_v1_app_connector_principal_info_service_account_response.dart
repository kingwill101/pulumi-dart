// ignore_for_file: unused_element, unnecessary_cast

/// ServiceAccount represents a GCP service account.
class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse {
  /// Email address of the service account.
  final String email;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse].
  /// [email] Email address of the service account.
  GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccountResponse(
      email: map['email'] as String,
    );
  }
}
