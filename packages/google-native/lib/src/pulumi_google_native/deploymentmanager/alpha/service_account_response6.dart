// ignore_for_file: unused_element, unnecessary_cast

/// Service Account used as a credential.
class ServiceAccountResponse6 {
  /// The IAM service account email address like test@myproject.iam.gserviceaccount.com
  final String email;

  ServiceAccountResponse6({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory ServiceAccountResponse6.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse6(
      email: map['email'] as String,
    );
  }
}
