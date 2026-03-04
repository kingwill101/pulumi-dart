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
    this.ciphers,
    this.status,
    this.tlsCipherPolicyName,
    this.tlsVersions,
  });

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
      ciphers: (() {
        final guardedValue = map['ciphers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tlsCipherPolicyName: (() {
        final guardedValue = map['tlsCipherPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tlsVersions: (() {
        final guardedValue = map['tlsVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
