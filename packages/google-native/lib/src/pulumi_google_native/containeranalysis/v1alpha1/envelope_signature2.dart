// ignore_for_file: unused_element, unnecessary_cast

/// A DSSE signature
class EnvelopeSignature2 {
  /// A reference id to the key being used for signing
  final String? keyid;

  /// The signature itself
  final String? sig;

  EnvelopeSignature2({
    this.keyid,
    this.sig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyidValue = keyid;
    if (keyidValue != null) {
      map['keyid'] = keyidValue;
    }
    final sigValue = sig;
    if (sigValue != null) {
      map['sig'] = sigValue;
    }
    return map;
  }

  factory EnvelopeSignature2.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignature2(
      keyid: map['keyid'] == null ? null : map['keyid'] as String,
      sig: map['sig'] == null ? null : map['sig'] as String,
    );
  }
}
