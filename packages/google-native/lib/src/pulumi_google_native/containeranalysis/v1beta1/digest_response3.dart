// ignore_for_file: unused_element, unnecessary_cast

/// Digest information.
class DigestResponse3 {
  /// `SHA1`, `SHA512` etc.
  final String algo;

  /// Value of the digest.
  final String digestBytes;

  DigestResponse3({
    required this.algo,
    required this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algo'] = algo;
    map['digestBytes'] = digestBytes;
    return map;
  }

  factory DigestResponse3.fromMap(Map<String, dynamic> map) {
    return DigestResponse3(
      algo: map['algo'] as String,
      digestBytes: map['digestBytes'] as String,
    );
  }
}
