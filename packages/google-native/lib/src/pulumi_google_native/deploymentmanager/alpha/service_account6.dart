// ignore_for_file: unused_element, unnecessary_cast

/// Service Account used as a credential.
class ServiceAccount6 {
  /// The IAM service account email address like test@myproject.iam.gserviceaccount.com
  final String? email;

  ServiceAccount6({
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

  factory ServiceAccount6.fromMap(Map<String, dynamic> map) {
    return ServiceAccount6(
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
