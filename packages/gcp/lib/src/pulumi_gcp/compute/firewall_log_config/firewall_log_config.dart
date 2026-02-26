// ignore_for_file: unused_element, unnecessary_cast

class FirewallLogConfig {
  /// This field denotes whether to include or exclude metadata for firewall logs.
  /// Possible values are: `EXCLUDE_ALL_METADATA`, `INCLUDE_ALL_METADATA`.
  final String metadata;

  FirewallLogConfig({
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadata'] = metadata;
    return map;
  }

  factory FirewallLogConfig.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfig(
      metadata: map['metadata'] as String,
    );
  }
}
