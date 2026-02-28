// ignore_for_file: unused_element, unnecessary_cast

class ConfigSignInAnonymous {
  /// Whether anonymous user auth is enabled for the project or not.
  ///
  /// <a name="nested_sign_in_hash_config"></a>The `hash_config` block contains:
  final bool enabled;

  /// Creates a new [ConfigSignInAnonymous].
  /// [enabled] Whether anonymous user auth is enabled for the project or not.
  ConfigSignInAnonymous({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConfigSignInAnonymous.fromMap(Map<String, dynamic> map) {
    return ConfigSignInAnonymous(
      enabled: map['enabled'] as bool,
    );
  }
}
