// ignore_for_file: unused_element, unnecessary_cast

class GetSAccount {
  /// The Google service account ID (the part before the `@` sign in the `email`)
  final String accountId;

  /// Whether a service account is disabled or not.
  final bool disabled;

  /// The display name for the service account.
  final String displayName;

  /// The e-mail address of the service account. This value
  /// should be referenced from any `gcp.organizations.getIAMPolicy` data sources
  /// that would grant the service account privileges.
  final String email;

  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final String member;

  /// The fully-qualified name of the service account.
  final String name;

  /// The unique id of the service account.
  final String uniqueId;

  /// Creates a new [GetSAccount].
  /// [accountId] The Google service account ID (the part before the `@` sign in the `email`)
  /// [disabled] Whether a service account is disabled or not.
  /// [displayName] The display name for the service account.
  /// [email] The e-mail address of the service account. This value
  /// [member] The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [name] The fully-qualified name of the service account.
  /// [uniqueId] The unique id of the service account.
  GetSAccount({
    required this.accountId,
    required this.disabled,
    required this.displayName,
    required this.email,
    required this.member,
    required this.name,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'disabled': disabled,
      'displayName': displayName,
      'email': email,
      'member': member,
      'name': name,
      'uniqueId': uniqueId,
    };
  }

  factory GetSAccount.fromMap(Map<String, dynamic> map) {
    return GetSAccount(
      accountId: map['accountId'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      email: map['email'] as String,
      member: map['member'] as String,
      name: map['name'] as String,
      uniqueId: map['uniqueId'] as String,
    );
  }
}
