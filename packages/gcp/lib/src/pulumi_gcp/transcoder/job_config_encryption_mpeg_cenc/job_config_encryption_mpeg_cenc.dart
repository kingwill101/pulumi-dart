// ignore_for_file: unused_element, unnecessary_cast

class JobConfigEncryptionMpegCenc {
  /// Specify the encryption scheme.
  final String scheme;

  JobConfigEncryptionMpegCenc({
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scheme'] = scheme;
    return map;
  }

  factory JobConfigEncryptionMpegCenc.fromMap(Map<String, dynamic> map) {
    return JobConfigEncryptionMpegCenc(
      scheme: map['scheme'] as String,
    );
  }
}
