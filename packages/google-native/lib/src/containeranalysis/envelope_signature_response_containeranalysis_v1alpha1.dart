// ignore_for_file: unused_element, unnecessary_cast

/// A DSSE signature
class EnvelopeSignatureResponseContaineranalysisV1alpha1 {
  /// A reference id to the key being used for signing
  final String keyid;

  /// The signature itself
  final String sig;

  /// Creates a new [EnvelopeSignatureResponseContaineranalysisV1alpha1].
  /// [keyid] A reference id to the key being used for signing
  /// [sig] The signature itself
  EnvelopeSignatureResponseContaineranalysisV1alpha1({
    required this.keyid,
    required this.sig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyid'] = keyid;
    map['sig'] = sig;
    return map;
  }

  factory EnvelopeSignatureResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return EnvelopeSignatureResponseContaineranalysisV1alpha1(
      keyid: map['keyid'] as String,
      sig: map['sig'] as String,
    );
  }
}
