// ignore_for_file: unused_element, unnecessary_cast

class GetRouterNatLogConfig {
  /// Indicates whether or not to export logs.
  final bool enable;

  /// Specifies the desired filtering of logs on this NAT. Possible values: ["ERRORS_ONLY", "TRANSLATIONS_ONLY", "ALL"]
  final String filter;

  GetRouterNatLogConfig({
    required this.enable,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['filter'] = filter;
    return map;
  }

  factory GetRouterNatLogConfig.fromMap(Map<String, dynamic> map) {
    return GetRouterNatLogConfig(
      enable: map['enable'] as bool,
      filter: map['filter'] as String,
    );
  }
}
