// ignore_for_file: unused_element, unnecessary_cast

class GetSAccount {
  /// The Google service account ID (the part before the `@` sign in the <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span>)
  final String accountId;

  /// Whether a service account is disabled or not.
  final bool disabled;

  /// The display name for the service account.
  final String displayName;

  /// The e-mail address of the service account. This value
  /// should be referenced from any <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data sources
  /// that would grant the service account privileges.
  final String email;

  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final String member;

  /// The fully-qualified name of the service account.
  final String name;

  /// The unique id of the service account.
  final String uniqueId;

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
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['disabled'] = disabled;
    map['displayName'] = displayName;
    map['email'] = email;
    map['member'] = member;
    map['name'] = name;
    map['uniqueId'] = uniqueId;
    return map;
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
