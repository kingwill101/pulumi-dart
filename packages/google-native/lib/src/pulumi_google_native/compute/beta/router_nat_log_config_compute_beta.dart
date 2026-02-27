// ignore_for_file: unused_element, unnecessary_cast

import 'router_nat_log_config_filter_compute_beta.dart';

/// Configuration of logging on a NAT.
class RouterNatLogConfigComputeBeta {
  /// Indicates whether or not to export logs. This is false by default.
  final bool? enable;

  /// Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
  final RouterNatLogConfigFilterComputeBeta? filter;

  RouterNatLogConfigComputeBeta({
    this.enable,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue.value;
    }
    return map;
  }

  factory RouterNatLogConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterNatLogConfigComputeBeta(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      filter: map['filter'] == null
          ? null
          : RouterNatLogConfigFilterComputeBeta.fromValue(
              map['filter'] as String),
    );
  }
}
