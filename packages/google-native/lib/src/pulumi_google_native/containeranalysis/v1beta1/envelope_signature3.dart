// ignore_for_file: unused_element, unnecessary_cast

class EnvelopeSignature3 {
  final String? keyid;
  final String? sig;

  EnvelopeSignature3({
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

  factory EnvelopeSignature3.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignature3(
      keyid: map['keyid'] == null ? null : map['keyid'] as String,
      sig: map['sig'] == null ? null : map['sig'] as String,
    );
  }
}
