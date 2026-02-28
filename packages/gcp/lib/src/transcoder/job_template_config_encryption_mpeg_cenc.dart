// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigEncryptionMpegCenc {
  /// Specify the encryption scheme.
  final String scheme;

  /// Creates a new [JobTemplateConfigEncryptionMpegCenc].
  /// [scheme] Specify the encryption scheme.
  JobTemplateConfigEncryptionMpegCenc({
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scheme'] = scheme;
    return map;
  }

  factory JobTemplateConfigEncryptionMpegCenc.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateConfigEncryptionMpegCenc(
      scheme: map['scheme'] as String,
    );
  }
}
