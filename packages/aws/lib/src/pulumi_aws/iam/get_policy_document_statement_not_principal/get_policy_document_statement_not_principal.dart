// ignore_for_file: unused_element, unnecessary_cast

class GetPolicyDocumentStatementNotPrincipal {
  /// List of identifiers for principals. When <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `AWS`, these are IAM principal ARNs, e.g., `arn:aws:iam::12345678901:role/yak-role`.  When <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `Service`, these are AWS Service roles, e.g., `lambda.amazonaws.com`. When <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `Federated`, these are web identity users or SAML provider ARNs, e.g., `accounts.google.com` or `arn:aws:iam::12345678901:saml-provider/yak-saml-provider`. When <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `CanonicalUser`, these are [canonical user IDs](https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html#FindingCanonicalId), e.g., <span pulumi-lang-nodejs="`79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`" pulumi-lang-dotnet="`79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`" pulumi-lang-go="`79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`" pulumi-lang-python="`79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`" pulumi-lang-yaml="`79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`" pulumi-lang-java="`79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`">`79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`</span>.
  final List<String> identifiers;

  /// Type of principal. Valid values include `AWS`, `Service`, `Federated`, `CanonicalUser` and `*`.
  final String type;

  GetPolicyDocumentStatementNotPrincipal({
    required this.identifiers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifiers'] = identifiers;
    map['type'] = type;
    return map;
  }

  factory GetPolicyDocumentStatementNotPrincipal.fromMap(
      Map<String, dynamic> map) {
    return GetPolicyDocumentStatementNotPrincipal(
      identifiers: (map['identifiers'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
