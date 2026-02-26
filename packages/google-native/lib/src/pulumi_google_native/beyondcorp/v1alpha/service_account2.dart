// ignore_for_file: unused_element, unnecessary_cast

/// ServiceAccount represents a GCP service account.
class ServiceAccount2 {
  /// Email address of the service account.
  final String? email;

  ServiceAccount2({
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

  factory ServiceAccount2.fromMap(Map<String, dynamic> map) {
    return ServiceAccount2(
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
