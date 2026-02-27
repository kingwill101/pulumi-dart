// ignore_for_file: unused_element, unnecessary_cast

/// Service Account used as a credential.
class ServiceAccountResponseDeploymentmanagerV2beta {
  /// The IAM service account email address like test@myproject.iam.gserviceaccount.com
  final String email;

  ServiceAccountResponseDeploymentmanagerV2beta({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory ServiceAccountResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return ServiceAccountResponseDeploymentmanagerV2beta(
      email: map['email'] as String,
    );
  }
}
