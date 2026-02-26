// ignore_for_file: unused_element, unnecessary_cast

class GetAppConnectorPrincipalInfoServiceAccount {
  /// Email address of the service account.
  final String email;

  GetAppConnectorPrincipalInfoServiceAccount({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory GetAppConnectorPrincipalInfoServiceAccount.fromMap(
      Map<String, dynamic> map) {
    return GetAppConnectorPrincipalInfoServiceAccount(
      email: map['email'] as String,
    );
  }
}
