// ignore_for_file: unused_element, unnecessary_cast

class EnvelopeSignatureResponse {
  final String keyid;
  final String sig;

  /// Creates a new [EnvelopeSignatureResponse].
  /// [keyid] Required.
  /// [sig] Required.
  EnvelopeSignatureResponse({
    required this.keyid,
    required this.sig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyid'] = keyid;
    map['sig'] = sig;
    return map;
  }

  factory EnvelopeSignatureResponse.fromMap(Map<String, dynamic> map) {
    return EnvelopeSignatureResponse(
      keyid: map['keyid'] as String,
      sig: map['sig'] as String,
    );
  }
}
