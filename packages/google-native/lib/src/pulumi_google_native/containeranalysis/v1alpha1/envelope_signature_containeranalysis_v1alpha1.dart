// ignore_for_file: unused_element, unnecessary_cast

/// A DSSE signature
class EnvelopeSignatureContaineranalysisV1alpha1 {
  /// A reference id to the key being used for signing
  final String? keyid;

  /// The signature itself
  final String? sig;

  EnvelopeSignatureContaineranalysisV1alpha1({
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

  factory EnvelopeSignatureContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return EnvelopeSignatureContaineranalysisV1alpha1(
      keyid: map['keyid'] == null ? null : map['keyid'] as String,
      sig: map['sig'] == null ? null : map['sig'] as String,
    );
  }
}
