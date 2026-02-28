// ignore_for_file: unused_element, unnecessary_cast


class EnvelopeSignature {
  final String? keyid;
  final String? sig;

  /// Creates a new [EnvelopeSignature].
  /// [keyid] Optional.
  /// [sig] Optional.
  EnvelopeSignature({
    this.keyid,
    this.sig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyid': ?keyid,
      'sig': ?sig,
    };
  }

  factory EnvelopeSignature.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignature(
      keyid: map['keyid'] == null ? null : map['keyid'] as String,
      sig: map['sig'] == null ? null : map['sig'] as String,
    );
  }
}

