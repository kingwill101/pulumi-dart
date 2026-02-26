// ignore_for_file: unused_element, unnecessary_cast

/// If provided, i18n rewrites are enabled.
class I18nConfig {
  /// The user-supplied path where country and language specific content will be looked for within the public directory.
  final String root;

  I18nConfig({
    required this.root,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['root'] = root;
    return map;
  }

  factory I18nConfig.fromMap(Map<String, dynamic> map) {
    return I18nConfig(
      root: map['root'] as String,
    );
  }
}
