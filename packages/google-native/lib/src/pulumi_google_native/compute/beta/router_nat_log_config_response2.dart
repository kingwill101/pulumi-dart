// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of logging on a NAT.
class RouterNatLogConfigResponse2 {
  /// Indicates whether or not to export logs. This is false by default.
  final bool enable;

  /// Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
  final String filter;

  RouterNatLogConfigResponse2({
    required this.enable,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['filter'] = filter;
    return map;
  }

  factory RouterNatLogConfigResponse2.fromMap(Map<String, dynamic> map) {
    return RouterNatLogConfigResponse2(
      enable: map['enable'] as bool,
      filter: map['filter'] as String,
    );
  }
}
