// ignore_for_file: unused_element, unnecessary_cast

class KeyRingImportJobAttestation {
  /// (Output)
  /// The attestation data provided by the HSM when the key operation was performed.
  /// A base64-encoded string.
  final String? content;

  /// (Output)
  /// The format of the attestation data.
  final String? format;

  KeyRingImportJobAttestation({
    this.content,
    this.format,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue;
    }
    return map;
  }

  factory KeyRingImportJobAttestation.fromMap(Map<String, dynamic> map) {
    return KeyRingImportJobAttestation(
      content: map['content'] == null ? null : map['content'] as String,
      format: map['format'] == null ? null : map['format'] as String,
    );
  }
}
