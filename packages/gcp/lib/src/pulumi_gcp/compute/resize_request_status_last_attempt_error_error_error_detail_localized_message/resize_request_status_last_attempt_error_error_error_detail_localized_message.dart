// ignore_for_file: unused_element, unnecessary_cast

class ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage {
  /// (Output)
  /// The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
  final String? locale;

  /// (Output)
  /// The localized error message in the above locale.
  final String? message;

  ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage({
    this.locale,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final localeValue = locale;
    if (localeValue != null) {
      map['locale'] = localeValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage.fromMap(
      Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage(
      locale: map['locale'] == null ? null : map['locale'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
