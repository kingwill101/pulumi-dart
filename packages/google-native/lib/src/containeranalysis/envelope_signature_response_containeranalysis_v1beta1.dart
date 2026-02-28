// ignore_for_file: unused_element, unnecessary_cast

class EnvelopeSignatureResponseContaineranalysisV1beta1 {
  final String keyid;
  final String sig;

  /// Creates a new [EnvelopeSignatureResponseContaineranalysisV1beta1].
  /// [keyid] Required.
  /// [sig] Required.
  EnvelopeSignatureResponseContaineranalysisV1beta1({
    required this.keyid,
    required this.sig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyid'] = keyid;
    map['sig'] = sig;
    return map;
  }

  factory EnvelopeSignatureResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return EnvelopeSignatureResponseContaineranalysisV1beta1(
      keyid: map['keyid'] as String,
      sig: map['sig'] as String,
    );
  }
}
