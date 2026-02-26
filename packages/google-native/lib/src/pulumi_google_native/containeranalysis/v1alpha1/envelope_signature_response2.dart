// ignore_for_file: unused_element, unnecessary_cast

/// A DSSE signature
class EnvelopeSignatureResponse2 {
  /// A reference id to the key being used for signing
  final String keyid;

  /// The signature itself
  final String sig;

  EnvelopeSignatureResponse2({
    required this.keyid,
    required this.sig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyid'] = keyid;
    map['sig'] = sig;
    return map;
  }

  factory EnvelopeSignatureResponse2.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignatureResponse2(
      keyid: map['keyid'] as String,
      sig: map['sig'] as String,
    );
  }
}
