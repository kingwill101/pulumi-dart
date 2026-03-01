// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TlsCipherPolicy resources.
class TlsCipherPolicyState {
  /// The encryption algorithms supported. It depends on the value of `tls_versions`.
  final pulumi.Input<List<String>>? ciphers;
  /// TLS policy instance state.
  final pulumi.Input<String>? status;
  /// TLS policy name. Length is from 2 to 128, or in both the English and Chinese characters must be with an uppercase/lowercase letter or a Chinese character and the beginning, may contain numbers, in dot `.`, underscore `_` or dash `-`.
  final pulumi.Input<String>? tlsCipherPolicyName;
  /// The version of TLS protocol. You can find the corresponding value description in the document center [What is Tls Cipher Policy](https://www.alibabacloud.com/help/doc-detail/196714.htm).
  final pulumi.Input<List<String>>? tlsVersions;

  /// Creates a new [TlsCipherPolicyState].
  /// [ciphers] The encryption algorithms supported. It depends on the value of `tls_versions`.
  /// [status] TLS policy instance state.
  /// [tlsCipherPolicyName] TLS policy name. Length is from 2 to 128, or in both the English and Chinese characters must be with an uppercase/lowercase letter or a Chinese character and the beginning, may contain numbers, in dot `.`, underscore `_` or dash `-`.
  /// [tlsVersions] The version of TLS protocol. You can find the corresponding value description in the document center [What is Tls Cipher Policy](https://www.alibabacloud.com/help/doc-detail/196714.htm).
  TlsCipherPolicyState({
    pulumi.Output<List<String>>? ciphers,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tlsCipherPolicyName,
    pulumi.Output<List<String>>? tlsVersions,
  }) :
      ciphers = pulumi.Input.asOptionalInput<List<String>>(ciphers),
      status = pulumi.Input.asOptionalInput<String>(status),
      tlsCipherPolicyName = pulumi.Input.asOptionalInput<String>(tlsCipherPolicyName),
      tlsVersions = pulumi.Input.asOptionalInput<List<String>>(tlsVersions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ?ciphers,
      'status': ?status,
      'tlsCipherPolicyName': ?tlsCipherPolicyName,
      'tlsVersions': ?tlsVersions,
    };
  }

  factory TlsCipherPolicyState.fromMap(Map<String, dynamic> map) {
    return TlsCipherPolicyState(
      ciphers: map['ciphers'] == null ? null : pulumi.Output.create<List<String>>((map['ciphers'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tlsCipherPolicyName: map['tlsCipherPolicyName'] == null ? null : pulumi.Output.create<String>(map['tlsCipherPolicyName'] as String),
      tlsVersions: map['tlsVersions'] == null ? null : pulumi.Output.create<List<String>>((map['tlsVersions'] as List).cast<String>()),
    );
  }
}

