// ignore_for_file: unused_element, unnecessary_cast

class AppLanguageSettings {
  /// The default language code of the app.
  final String? defaultLanguageCode;

  /// Enables multilingual support. If true, agents in the app will use pre-built
  /// instructions to improve handling of multilingual input.
  final bool? enableMultilingualSupport;

  /// The action to perform when an agent receives input in an unsupported
  /// language.
  /// This can be a predefined action or a custom tool call.
  /// Valid values are:
  /// - A tool's full resource name, which triggers a specific tool execution.
  /// - A predefined system action, such as "escalate" or "exit", which triggers
  /// an EndSession signal with corresponding metadata
  /// to terminate the conversation.
  final String? fallbackAction;

  /// List of languages codes supported by the app, in addition to the
  /// `default_language_code`.
  final List<String>? supportedLanguageCodes;

  /// Creates a new [AppLanguageSettings].
  /// [defaultLanguageCode] The default language code of the app.
  /// [enableMultilingualSupport] Enables multilingual support. If true, agents in the app will use pre-built
  /// [fallbackAction] The action to perform when an agent receives input in an unsupported
  /// [supportedLanguageCodes] List of languages codes supported by the app, in addition to the
  AppLanguageSettings({
    this.defaultLanguageCode,
    this.enableMultilingualSupport,
    this.fallbackAction,
    this.supportedLanguageCodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultLanguageCodeValue = defaultLanguageCode;
    if (defaultLanguageCodeValue != null) {
      map['defaultLanguageCode'] = defaultLanguageCodeValue;
    }
    final enableMultilingualSupportValue = enableMultilingualSupport;
    if (enableMultilingualSupportValue != null) {
      map['enableMultilingualSupport'] = enableMultilingualSupportValue;
    }
    final fallbackActionValue = fallbackAction;
    if (fallbackActionValue != null) {
      map['fallbackAction'] = fallbackActionValue;
    }
    final supportedLanguageCodesValue = supportedLanguageCodes;
    if (supportedLanguageCodesValue != null) {
      map['supportedLanguageCodes'] = supportedLanguageCodesValue;
    }
    return map;
  }

  factory AppLanguageSettings.fromMap(Map<String, dynamic> map) {
    return AppLanguageSettings(
      defaultLanguageCode: map['defaultLanguageCode'] == null
          ? null
          : map['defaultLanguageCode'] as String,
      enableMultilingualSupport: map['enableMultilingualSupport'] == null
          ? null
          : map['enableMultilingualSupport'] as bool,
      fallbackAction: map['fallbackAction'] == null
          ? null
          : map['fallbackAction'] as String,
      supportedLanguageCodes: map['supportedLanguageCodes'] == null
          ? null
          : (map['supportedLanguageCodes'] as List).cast<String>(),
    );
  }
}
