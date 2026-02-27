// ignore_for_file: unused_element, unnecessary_cast

/// ServiceAccount represents a GCP service account.
class ServiceAccountBeyondcorpV1alpha {
  /// Email address of the service account.
  final String? email;

  ServiceAccountBeyondcorpV1alpha({
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

  factory ServiceAccountBeyondcorpV1alpha.fromMap(Map<String, dynamic> map) {
    return ServiceAccountBeyondcorpV1alpha(
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
