// ignore_for_file: unused_element, unnecessary_cast

/// Provides a localized error message that is safe to return to the user which can be attached to an RPC error.
class LocalizedMessageResponseComputeBeta {
  /// The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
  final String locale;

  /// The localized error message in the above locale.
  final String message;

  LocalizedMessageResponseComputeBeta({
    required this.locale,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locale'] = locale;
    map['message'] = message;
    return map;
  }

  factory LocalizedMessageResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return LocalizedMessageResponseComputeBeta(
      locale: map['locale'] as String,
      message: map['message'] as String,
    );
  }
}
