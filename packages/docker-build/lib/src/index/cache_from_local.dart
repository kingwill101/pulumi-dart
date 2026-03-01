// ignore_for_file: unused_element, unnecessary_cast


class CacheFromLocal {
  /// Digest of manifest to import.
  final String? digest;
  /// Path of the local directory where cache gets imported from.
  final String src;

  /// Creates a new [CacheFromLocal].
  /// [digest] Digest of manifest to import.
  /// [src] Path of the local directory where cache gets imported from.
  CacheFromLocal({
    this.digest,
    required this.src,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'src': src,
    };
  }

  factory CacheFromLocal.fromMap(Map<String, dynamic> map) {
    return CacheFromLocal(
      digest: map['digest'] == null ? null : map['digest'] as String,
      src: map['src'] as String,
    );
  }
}

