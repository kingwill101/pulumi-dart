// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Provider
class ProviderResponse {
  /// &lt;p&gt;Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric and created in the same Amazon Web Services Region as the cluster. If the KMS key was created in a different account, the &lt;a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html'&gt;IAM principal&lt;/a&gt; must have access to the KMS key. For more information, see &lt;a href='https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html'&gt;Allowing users in other accounts to use a KMS key&lt;/a&gt; in the &lt;i&gt;Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String>? keyArn;

  /// Creates a new [ProviderResponse].
  /// [keyArn] &lt;p&gt;Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric and created in the same Amazon Web Services Region as the cluster. If the KMS key was created in a different account, the &lt;a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html'&gt;IAM principal&lt;/a&gt; must have access to the KMS key. For more information, see &lt;a href='https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html'&gt;Allowing users in other accounts to use a KMS key&lt;/a&gt; in the &lt;i&gt;Key Management Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
  ProviderResponse({this.keyArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyArn': ?keyArn};
  }

  factory ProviderResponse.fromMap(Map<String, dynamic> map) {
    return ProviderResponse(
      keyArn: (() {
        final guardedValue = map['keyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
