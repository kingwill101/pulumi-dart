// ignore_for_file: unused_element, unnecessary_cast

/// Provides a localized error message that is safe to return to the user which can be attached to an RPC error.
class LocalizedMessageResponseVmmigrationV1alpha1 {
  /// The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
  final String locale;

  /// The localized error message in the above locale.
  final String message;

  LocalizedMessageResponseVmmigrationV1alpha1({
    required this.locale,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locale'] = locale;
    map['message'] = message;
    return map;
  }

  factory LocalizedMessageResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return LocalizedMessageResponseVmmigrationV1alpha1(
      locale: map['locale'] as String,
      message: map['message'] as String,
    );
  }
}
