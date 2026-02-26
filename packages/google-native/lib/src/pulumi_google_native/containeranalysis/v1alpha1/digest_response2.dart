// ignore_for_file: unused_element, unnecessary_cast

/// Digest information.
class DigestResponse2 {
  /// `SHA1`, `SHA512` etc.
  final String algo;

  /// Value of the digest.
  final String digestBytes;

  DigestResponse2({
    required this.algo,
    required this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algo'] = algo;
    map['digestBytes'] = digestBytes;
    return map;
  }

  factory DigestResponse2.fromMap(Map<String, dynamic> map) {
    return DigestResponse2(
      algo: map['algo'] as String,
      digestBytes: map['digestBytes'] as String,
    );
  }
}
