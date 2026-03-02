// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Provider
class Provider {
  /// <p>Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric and created in the same Amazon Web Services Region as the cluster. If the KMS key was created in a different account, the <a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html'>IAM principal</a> must have access to the KMS key. For more information, see <a href='https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html'>Allowing users in other accounts to use a KMS key</a> in the <i>Key Management Service Developer Guide</i>.</p>
  final pulumi.Input<String>? keyArn;

  /// Creates a new [Provider].
  /// [keyArn] <p>Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric and created in the same Amazon Web Services Region as the cluster. If the KMS key was created in a different account, the <a href='https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html'>IAM principal</a> must have access to the KMS key. For more information, see <a href='https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html'>Allowing users in other accounts to use a KMS key</a> in the <i>Key Management Service Developer Guide</i>.</p>
  Provider({
    this.keyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyArn': ?keyArn,
    };
  }

  factory Provider.fromMap(Map<String, dynamic> map) {
    return Provider(
      keyArn: map['keyArn'] == null ? null : (map['keyArn'] as String).input(),
    );
  }
}

