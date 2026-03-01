// ignore_for_file: unused_element, unnecessary_cast


class AppConnectionAuthentication {
  /// Service principal certificate for `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalCertificate`.
  final String? certificate;
  /// Client ID for `userAssignedIdentity` or `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalSecret` or `servicePrincipalCertificate`. When `type` is set to `userAssignedIdentity`, `client_id` and `subscription_id` should be either both specified or both not specified.
  final String? clientId;
  /// Username or account name for secret auth. `name` and `secret` should be either both specified or both not specified when `type` is set to `secret`.
  final String? name;
  /// Principal ID for `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalSecret` or `servicePrincipalCertificate`.
  final String? principalId;
  /// Password or account key for secret auth. `secret` and `name` should be either both specified or both not specified when `type` is set to `secret`.
  final String? secret;
  /// Subscription ID for `userAssignedIdentity`. `subscription_id` and `client_id` should be either both specified or both not specified.
  final String? subscriptionId;
  /// The authentication type. Possible values are `systemAssignedIdentity`, `userAssignedIdentity`, `servicePrincipalSecret`, `servicePrincipalCertificate`, `secret`. Changing this forces a new resource to be created.
  final String type;

  /// Creates a new [AppConnectionAuthentication].
  /// [certificate] Service principal certificate for `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalCertificate`.
  /// [clientId] Client ID for `userAssignedIdentity` or `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalSecret` or `servicePrincipalCertificate`. When `type` is set to `userAssignedIdentity`, `client_id` and `subscription_id` should be either both specified or both not specified.
  /// [name] Username or account name for secret auth. `name` and `secret` should be either both specified or both not specified when `type` is set to `secret`.
  /// [principalId] Principal ID for `servicePrincipal` auth. Should be specified when `type` is set to `servicePrincipalSecret` or `servicePrincipalCertificate`.
  /// [secret] Password or account key for secret auth. `secret` and `name` should be either both specified or both not specified when `type` is set to `secret`.
  /// [subscriptionId] Subscription ID for `userAssignedIdentity`. `subscription_id` and `client_id` should be either both specified or both not specified.
  /// [type] The authentication type. Possible values are `systemAssignedIdentity`, `userAssignedIdentity`, `servicePrincipalSecret`, `servicePrincipalCertificate`, `secret`. Changing this forces a new resource to be created.
  AppConnectionAuthentication({
    this.certificate,
    this.clientId,
    this.name,
    this.principalId,
    this.secret,
    this.subscriptionId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'clientId': ?clientId,
      'name': ?name,
      'principalId': ?principalId,
      'secret': ?secret,
      'subscriptionId': ?subscriptionId,
      'type': type,
    };
  }

  factory AppConnectionAuthentication.fromMap(Map<String, dynamic> map) {
    return AppConnectionAuthentication(
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      type: map['type'] as String,
    );
  }
}

