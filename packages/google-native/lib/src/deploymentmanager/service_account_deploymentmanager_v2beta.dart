// ignore_for_file: unused_element, unnecessary_cast

/// Service Account used as a credential.
class ServiceAccountDeploymentmanagerV2beta {
  /// The IAM service account email address like test@myproject.iam.gserviceaccount.com
  final String? email;

  /// Creates a new [ServiceAccountDeploymentmanagerV2beta].
  /// [email] The IAM service account email address like test@myproject.iam.gserviceaccount.com
  ServiceAccountDeploymentmanagerV2beta({
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

  factory ServiceAccountDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return ServiceAccountDeploymentmanagerV2beta(
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
