// ignore_for_file: unused_element, unnecessary_cast

/// Digest information.
class DigestContaineranalysisV1alpha1 {
  /// `SHA1`, `SHA512` etc.
  final String? algo;

  /// Value of the digest.
  final String? digestBytes;

  /// Creates a new [DigestContaineranalysisV1alpha1].
  /// [algo] `SHA1`, `SHA512` etc.
  /// [digestBytes] Value of the digest.
  DigestContaineranalysisV1alpha1({
    this.algo,
    this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final algoValue = algo;
    if (algoValue != null) {
      map['algo'] = algoValue;
    }
    final digestBytesValue = digestBytes;
    if (digestBytesValue != null) {
      map['digestBytes'] = digestBytesValue;
    }
    return map;
  }

  factory DigestContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return DigestContaineranalysisV1alpha1(
      algo: map['algo'] == null ? null : map['algo'] as String,
      digestBytes:
          map['digestBytes'] == null ? null : map['digestBytes'] as String,
    );
  }
}
