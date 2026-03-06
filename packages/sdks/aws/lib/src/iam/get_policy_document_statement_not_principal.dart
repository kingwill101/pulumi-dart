// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyDocumentStatementNotPrincipal {
  /// List of identifiers for principals. When `type` is `AWS`, these are IAM principal ARNs, e.g., `arn:aws:iam::12345678901:role/yak-role`.  When `type` is `Service`, these are AWS Service roles, e.g., `lambda.amazonaws.com`. When `type` is `Federated`, these are web identity users or SAML provider ARNs, e.g., `accounts.google.com` or `arn:aws:iam::12345678901:saml-provider/yak-saml-provider`. When `type` is `CanonicalUser`, these are [canonical user IDs](https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html#FindingCanonicalId), e.g., `79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`.
  final pulumi.Input<List<String>> identifiers;
  /// Type of principal. Valid values include `AWS`, `Service`, `Federated`, `CanonicalUser` and `*`.
  final pulumi.Input<String> type;

  /// Creates a new [GetPolicyDocumentStatementNotPrincipal].
  /// [identifiers] List of identifiers for principals. When `type` is `AWS`, these are IAM principal ARNs, e.g., `arn:aws:iam::12345678901:role/yak-role`.  When `type` is `Service`, these are AWS Service roles, e.g., `lambda.amazonaws.com`. When `type` is `Federated`, these are web identity users or SAML provider ARNs, e.g., `accounts.google.com` or `arn:aws:iam::12345678901:saml-provider/yak-saml-provider`. When `type` is `CanonicalUser`, these are [canonical user IDs](https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html#FindingCanonicalId), e.g., `79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be`.
  /// [type] Type of principal. Valid values include `AWS`, `Service`, `Federated`, `CanonicalUser` and `*`.
  const GetPolicyDocumentStatementNotPrincipal({
    required this.identifiers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifiers': identifiers,
      'type': type,
    };
  }

  factory GetPolicyDocumentStatementNotPrincipal.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentStatementNotPrincipal(
      identifiers: pulumi.Input.fromValue((map['identifiers'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

