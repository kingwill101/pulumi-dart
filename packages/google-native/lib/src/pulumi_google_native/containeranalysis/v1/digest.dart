// ignore_for_file: unused_element, unnecessary_cast

/// Digest information.
class Digest {
  /// `SHA1`, `SHA512` etc.
  final String? algo;

  /// Value of the digest.
  final String? digestBytes;

  Digest({
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

  factory Digest.fromMap(Map<String, dynamic> map) {
    return Digest(
      algo: map['algo'] == null ? null : map['algo'] as String,
      digestBytes:
          map['digestBytes'] == null ? null : map['digestBytes'] as String,
    );
  }
}
