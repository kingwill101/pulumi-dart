// ignore_for_file: unused_element, unnecessary_cast


/// Digest information.
class DigestResponse {
  /// `SHA1`, `SHA512` etc.
  final String algo;
  /// Value of the digest.
  final String digestBytes;

  /// Creates a new [DigestResponse].
  /// [algo] `SHA1`, `SHA512` etc.
  /// [digestBytes] Value of the digest.
  DigestResponse({
    required this.algo,
    required this.digestBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algo': algo,
      'digestBytes': digestBytes,
    };
  }

  factory DigestResponse.fromMap(Map<String, dynamic> map) {
    return DigestResponse(
      algo: map['algo'] as String,
      digestBytes: map['digestBytes'] as String,
    );
  }
}

