// ignore_for_file: unused_element, unnecessary_cast

/// Service Account used as a credential.
class ServiceAccountResponse7 {
  /// The IAM service account email address like test@myproject.iam.gserviceaccount.com
  final String email;

  ServiceAccountResponse7({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory ServiceAccountResponse7.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse7(
      email: map['email'] as String,
    );
  }
}
