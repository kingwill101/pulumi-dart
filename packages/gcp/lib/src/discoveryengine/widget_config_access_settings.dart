// ignore_for_file: unused_element, unnecessary_cast

class WidgetConfigAccessSettings {
  /// Whether public unauthenticated access is allowed.
  final bool? allowPublicAccess;

  /// List of domains that are allowed to integrate the search widget.
  final List<String>? allowlistedDomains;

  /// Whether web app access is enabled.
  final bool? enableWebApp;

  /// Language code for user interface. Use language tags defined by
  /// [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). If unset, the
  /// default language code is "en-US".
  final String? languageCode;

  /// The workforce identity pool provider used to access the widget.
  final String? workforceIdentityPoolProvider;

  /// Creates a new [WidgetConfigAccessSettings].
  /// [allowPublicAccess] Whether public unauthenticated access is allowed.
  /// [allowlistedDomains] List of domains that are allowed to integrate the search widget.
  /// [enableWebApp] Whether web app access is enabled.
  /// [languageCode] Language code for user interface. Use language tags defined by
  /// [workforceIdentityPoolProvider] The workforce identity pool provider used to access the widget.
  WidgetConfigAccessSettings({
    this.allowPublicAccess,
    this.allowlistedDomains,
    this.enableWebApp,
    this.languageCode,
    this.workforceIdentityPoolProvider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowPublicAccessValue = allowPublicAccess;
    if (allowPublicAccessValue != null) {
      map['allowPublicAccess'] = allowPublicAccessValue;
    }
    final allowlistedDomainsValue = allowlistedDomains;
    if (allowlistedDomainsValue != null) {
      map['allowlistedDomains'] = allowlistedDomainsValue;
    }
    final enableWebAppValue = enableWebApp;
    if (enableWebAppValue != null) {
      map['enableWebApp'] = enableWebAppValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final workforceIdentityPoolProviderValue = workforceIdentityPoolProvider;
    if (workforceIdentityPoolProviderValue != null) {
      map['workforceIdentityPoolProvider'] = workforceIdentityPoolProviderValue;
    }
    return map;
  }

  factory WidgetConfigAccessSettings.fromMap(Map<String, dynamic> map) {
    return WidgetConfigAccessSettings(
      allowPublicAccess: map['allowPublicAccess'] == null
          ? null
          : map['allowPublicAccess'] as bool,
      allowlistedDomains: map['allowlistedDomains'] == null
          ? null
          : (map['allowlistedDomains'] as List).cast<String>(),
      enableWebApp:
          map['enableWebApp'] == null ? null : map['enableWebApp'] as bool,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      workforceIdentityPoolProvider:
          map['workforceIdentityPoolProvider'] == null
              ? null
              : map['workforceIdentityPoolProvider'] as String,
    );
  }
}
