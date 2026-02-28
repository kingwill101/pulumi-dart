// ignore_for_file: unused_element, unnecessary_cast

class GetPolicyDocumentStatementPrincipal {
  /// List of identifiers for principals. When `type` is `AWS`, these are IAM principal ARNs, e.g., `arn:aws:iam::12345678901:role/yak-role`.  When `type` is `Service`, these are AWS Service roles, e.g., `lambda.amazonaws.com`. When `type` is `Federated`, these are web identity users or SAML provider ARNs, e.g., `accounts.google.com` or `arn:aws:iam::12345678901:saml-provider/yak-saml-provider`. When `type` is `CanonicalUser`, these are [canonical user IDs](https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html#FindingCanonicalId), e.g., `79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`.
  final List<String> identifiers;

  /// Type of principal. Valid values include `AWS`, `Service`, `Federated`, `CanonicalUser` and `*`.
  final String type;

  /// Creates a new [GetPolicyDocumentStatementPrincipal].
  /// [identifiers] List of identifiers for principals. When `type` is `AWS`, these are IAM principal ARNs, e.g., `arn:aws:iam::12345678901:role/yak-role`.  When `type` is `Service`, these are AWS Service roles, e.g., `lambda.amazonaws.com`. When `type` is `Federated`, these are web identity users or SAML provider ARNs, e.g., `accounts.google.com` or `arn:aws:iam::12345678901:saml-provider/yak-saml-provider`. When `type` is `CanonicalUser`, these are [canonical user IDs](https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html#FindingCanonicalId), e.g., `79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`.
  /// [type] Type of principal. Valid values include `AWS`, `Service`, `Federated`, `CanonicalUser` and `*`.
  GetPolicyDocumentStatementPrincipal({
    required this.identifiers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifiers'] = identifiers;
    map['type'] = type;
    return map;
  }

  factory GetPolicyDocumentStatementPrincipal.fromMap(
      Map<String, dynamic> map) {
    return GetPolicyDocumentStatementPrincipal(
      identifiers: (map['identifiers'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
