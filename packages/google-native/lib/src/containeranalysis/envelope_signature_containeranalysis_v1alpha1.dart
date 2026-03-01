// ignore_for_file: unused_element, unnecessary_cast

/// A DSSE signature
class EnvelopeSignatureContaineranalysisV1alpha1 {
  /// A reference id to the key being used for signing
  final String? keyid;

  /// The signature itself
  final String? sig;

  /// Creates a new [EnvelopeSignatureContaineranalysisV1alpha1].
  /// [keyid] A reference id to the key being used for signing
  /// [sig] The signature itself
  EnvelopeSignatureContaineranalysisV1alpha1({this.keyid, this.sig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyid': ?keyid, 'sig': ?sig};
  }

  factory EnvelopeSignatureContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvelopeSignatureContaineranalysisV1alpha1(
      keyid: map['keyid'] == null ? null : map['keyid'] as String,
      sig: map['sig'] == null ? null : map['sig'] as String,
    );
  }
}
