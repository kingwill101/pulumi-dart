// ignore_for_file: unused_element, unnecessary_cast

/// The available logging options for a firewall rule.
class FirewallLogConfigResponse2 {
  /// This field denotes whether to enable logging for a particular firewall rule.
  final bool enable;

  /// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
  final String metadata;

  FirewallLogConfigResponse2({
    required this.enable,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['metadata'] = metadata;
    return map;
  }

  factory FirewallLogConfigResponse2.fromMap(Map<String, dynamic> map) {
    return FirewallLogConfigResponse2(
      enable: map['enable'] as bool,
      metadata: map['metadata'] as String,
    );
  }
}
