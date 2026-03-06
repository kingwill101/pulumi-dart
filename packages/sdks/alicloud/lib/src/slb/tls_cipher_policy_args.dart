// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_tls_cipher_policy_tls_cipher_policy_args_doc}
/// The set of arguments for TlsCipherPolicy.
/// {@endtemplate}
/// {@macro pulumi_slb_tls_cipher_policy_tls_cipher_policy_args_doc}
class TlsCipherPolicyArgs {
  /// The encryption algorithms supported. It depends on the value of `tls_versions`.
  final pulumi.Input<List<String>> ciphers;
  /// TLS policy name. Length is from 2 to 128, or in both the English and Chinese characters must be with an uppercase/lowercase letter or a Chinese character and the beginning, may contain numbers, in dot `.`, underscore `_` or dash `-`.
  final pulumi.Input<String> tlsCipherPolicyName;
  /// The version of TLS protocol. You can find the corresponding value description in the document center [What is Tls Cipher Policy](https://www.alibabacloud.com/help/doc-detail/196714.htm).
  final pulumi.Input<List<String>> tlsVersions;

  /// Creates a new [TlsCipherPolicyArgs].
  /// [ciphers] The encryption algorithms supported. It depends on the value of `tls_versions`.
  /// [tlsCipherPolicyName] TLS policy name. Length is from 2 to 128, or in both the English and Chinese characters must be with an uppercase/lowercase letter or a Chinese character and the beginning, may contain numbers, in dot `.`, underscore `_` or dash `-`.
  /// [tlsVersions] The version of TLS protocol. You can find the corresponding value description in the document center [What is Tls Cipher Policy](https://www.alibabacloud.com/help/doc-detail/196714.htm).
  const TlsCipherPolicyArgs({
    required this.ciphers,
    required this.tlsCipherPolicyName,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'tlsCipherPolicyName': tlsCipherPolicyName,
      'tlsVersions': tlsVersions,
    };
  }

  factory TlsCipherPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TlsCipherPolicyArgs(
      ciphers: pulumi.Input.fromValue((map['ciphers'] as List).cast<String>()),
      tlsCipherPolicyName: pulumi.Input.fromValue(map['tlsCipherPolicyName'] as String),
      tlsVersions: pulumi.Input.fromValue((map['tlsVersions'] as List).cast<String>()),
    );
  }
}

