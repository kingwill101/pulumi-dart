// ignore_for_file: unused_element, unnecessary_cast

class EnvelopeSignatureContaineranalysisV1beta1 {
  final String? keyid;
  final String? sig;

  EnvelopeSignatureContaineranalysisV1beta1({
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

  factory EnvelopeSignatureContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return EnvelopeSignatureContaineranalysisV1beta1(
      keyid: map['keyid'] == null ? null : map['keyid'] as String,
      sig: map['sig'] == null ? null : map['sig'] as String,
    );
  }
}
