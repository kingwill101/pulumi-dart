// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppCacheConfig {
  /// Type of cache configuration to use for an Amplify app. Valid values: `AMPLIFY_MANAGED`, `AMPLIFY_MANAGED_NO_COOKIES`.
  final pulumi.Input<String> type;

  /// Creates a new [AppCacheConfig].
  /// [type] Type of cache configuration to use for an Amplify app. Valid values: `AMPLIFY_MANAGED`, `AMPLIFY_MANAGED_NO_COOKIES`.
  const AppCacheConfig({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory AppCacheConfig.fromMap(Map<String, dynamic> map) {
    return AppCacheConfig(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

