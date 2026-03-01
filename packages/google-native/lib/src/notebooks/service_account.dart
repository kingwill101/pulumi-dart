// ignore_for_file: unused_element, unnecessary_cast

/// A service account that acts as an identity.
class ServiceAccount {
  /// Optional. Email address of the service account.
  final String? email;

  /// Creates a new [ServiceAccount].
  /// [email] Optional. Email address of the service account.
  ServiceAccount({this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': ?email};
  }

  factory ServiceAccount.fromMap(Map<String, dynamic> map) {
    return ServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
