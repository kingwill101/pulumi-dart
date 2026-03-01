// ignore_for_file: unused_element, unnecessary_cast

class AppCacheConfig {
  /// Type of cache configuration to use for an Amplify app. Valid values: `AMPLIFY_MANAGED`, `AMPLIFY_MANAGED_NO_COOKIES`.
  final String type;

  /// Creates a new [AppCacheConfig].
  /// [type] Type of cache configuration to use for an Amplify app. Valid values: `AMPLIFY_MANAGED`, `AMPLIFY_MANAGED_NO_COOKIES`.
  AppCacheConfig({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory AppCacheConfig.fromMap(Map<String, dynamic> map) {
    return AppCacheConfig(type: map['type'] as String);
  }
}
