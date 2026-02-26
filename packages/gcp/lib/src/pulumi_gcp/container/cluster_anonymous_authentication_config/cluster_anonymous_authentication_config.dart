// ignore_for_file: unused_element, unnecessary_cast

class ClusterAnonymousAuthenticationConfig {
  /// Sets or removes authentication restrictions. Available options include `LIMITED` and `ENABLED`.
  final String mode;

  ClusterAnonymousAuthenticationConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory ClusterAnonymousAuthenticationConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAnonymousAuthenticationConfig(
      mode: map['mode'] as String,
    );
  }
}
