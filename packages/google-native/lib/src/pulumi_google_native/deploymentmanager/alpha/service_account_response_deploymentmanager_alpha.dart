// ignore_for_file: unused_element, unnecessary_cast

/// Service Account used as a credential.
class ServiceAccountResponseDeploymentmanagerAlpha {
  /// The IAM service account email address like test@myproject.iam.gserviceaccount.com
  final String email;

  ServiceAccountResponseDeploymentmanagerAlpha({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory ServiceAccountResponseDeploymentmanagerAlpha.fromMap(
      Map<String, dynamic> map) {
    return ServiceAccountResponseDeploymentmanagerAlpha(
      email: map['email'] as String,
    );
  }
}
