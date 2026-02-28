// ignore_for_file: unused_element, unnecessary_cast


class AppConnectorPrincipalInfoServiceAccount {
  /// Email address of the service account.
  final String email;

  /// Creates a new [AppConnectorPrincipalInfoServiceAccount].
  /// [email] Email address of the service account.
  AppConnectorPrincipalInfoServiceAccount({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AppConnectorPrincipalInfoServiceAccount.fromMap(Map<String, dynamic> map) {
    return AppConnectorPrincipalInfoServiceAccount(
      email: map['email'] as String,
    );
  }
}

