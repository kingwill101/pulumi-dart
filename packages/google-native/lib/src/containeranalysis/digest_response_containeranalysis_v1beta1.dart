// ignore_for_file: unused_element, unnecessary_cast

/// Digest information.
class DigestResponseContaineranalysisV1beta1 {
  /// `SHA1`, `SHA512` etc.
  final String algo;

  /// Value of the digest.
  final String digestBytes;

  /// Creates a new [DigestResponseContaineranalysisV1beta1].
  /// [algo] `SHA1`, `SHA512` etc.
  /// [digestBytes] Value of the digest.
  DigestResponseContaineranalysisV1beta1({
    required this.algo,
    required this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algo'] = algo;
    map['digestBytes'] = digestBytes;
    return map;
  }

  factory DigestResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DigestResponseContaineranalysisV1beta1(
      algo: map['algo'] as String,
      digestBytes: map['digestBytes'] as String,
    );
  }
}
