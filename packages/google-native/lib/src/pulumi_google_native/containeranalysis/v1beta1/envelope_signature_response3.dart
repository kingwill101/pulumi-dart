// ignore_for_file: unused_element, unnecessary_cast

class EnvelopeSignatureResponse3 {
  final String keyid;
  final String sig;

  EnvelopeSignatureResponse3({
    required this.keyid,
    required this.sig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyid'] = keyid;
    map['sig'] = sig;
    return map;
  }

  factory EnvelopeSignatureResponse3.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignatureResponse3(
      keyid: map['keyid'] as String,
      sig: map['sig'] as String,
    );
  }
}
