// ignore_for_file: unused_element, unnecessary_cast

/// ServiceAccount represents a GCP service account.
class GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount {
  /// Email address of the service account.
  final String? email;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount].
  /// [email] Email address of the service account.
  GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount({
    this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    return map;
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
