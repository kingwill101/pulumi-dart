// ignore_for_file: unused_element, unnecessary_cast


/// ServiceAccount represents a GCP service account.
class GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount {
  /// Email address of the service account.
  final String? email;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount].
  /// [email] Email address of the service account.
  GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount({
    this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
    };
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}

