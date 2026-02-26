// ignore_for_file: unused_element, unnecessary_cast

/// ServiceAccount represents a GCP service account.
class ServiceAccountResponse2 {
  /// Email address of the service account.
  final String email;

  ServiceAccountResponse2({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory ServiceAccountResponse2.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse2(
      email: map['email'] as String,
    );
  }
}
