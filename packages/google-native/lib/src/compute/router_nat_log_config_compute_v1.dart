// ignore_for_file: unused_element, unnecessary_cast

import 'router_nat_log_config_filter_compute_v1.dart';

/// Configuration of logging on a NAT.
class RouterNatLogConfigComputeV1 {
  /// Indicates whether or not to export logs. This is false by default.
  final bool? enable;
  /// Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
  final RouterNatLogConfigFilterComputeV1? filter;

  /// Creates a new [RouterNatLogConfigComputeV1].
  /// [enable] Indicates whether or not to export logs. This is false by default.
  /// [filter] Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
  RouterNatLogConfigComputeV1({
    this.enable,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'filter': ?filter == null ? null : filter!.value,
    };
  }

  factory RouterNatLogConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterNatLogConfigComputeV1(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      filter: map['filter'] == null ? null : RouterNatLogConfigFilterComputeV1.fromValue(map['filter'] as String),
    );
  }
}

