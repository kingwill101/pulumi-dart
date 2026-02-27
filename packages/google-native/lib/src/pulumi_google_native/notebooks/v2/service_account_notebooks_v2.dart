// ignore_for_file: unused_element, unnecessary_cast

/// A service account that acts as an identity.
class ServiceAccountNotebooksV2 {
  /// Optional. Email address of the service account.
  final String? email;

  ServiceAccountNotebooksV2({
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

  factory ServiceAccountNotebooksV2.fromMap(Map<String, dynamic> map) {
    return ServiceAccountNotebooksV2(
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
