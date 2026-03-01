// ignore_for_file: unused_element, unnecessary_cast

/// A signature object consists of the KeyID used and the signature itself.
class GrafeasV1beta1IntotoSignature {
  final String? keyid;
  final String? sig;

  /// Creates a new [GrafeasV1beta1IntotoSignature].
  /// [keyid] Optional.
  /// [sig] Optional.
  GrafeasV1beta1IntotoSignature({this.keyid, this.sig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyid': ?keyid, 'sig': ?sig};
  }

  factory GrafeasV1beta1IntotoSignature.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1IntotoSignature(
      keyid: map['keyid'] == null ? null : map['keyid'] as String,
      sig: map['sig'] == null ? null : map['sig'] as String,
    );
  }
}
