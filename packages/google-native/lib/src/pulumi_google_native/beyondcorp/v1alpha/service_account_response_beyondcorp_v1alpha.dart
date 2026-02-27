// ignore_for_file: unused_element, unnecessary_cast

/// ServiceAccount represents a GCP service account.
class ServiceAccountResponseBeyondcorpV1alpha {
  /// Email address of the service account.
  final String email;

  ServiceAccountResponseBeyondcorpV1alpha({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory ServiceAccountResponseBeyondcorpV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ServiceAccountResponseBeyondcorpV1alpha(
      email: map['email'] as String,
    );
  }
}
