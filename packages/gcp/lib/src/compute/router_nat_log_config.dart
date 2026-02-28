// ignore_for_file: unused_element, unnecessary_cast

class RouterNatLogConfig {
  /// Indicates whether or not to export logs.
  final bool enable;

  /// Specifies the desired filtering of logs on this NAT.
  /// Possible values are: `ERRORS_ONLY`, `TRANSLATIONS_ONLY`, `ALL`.
  final String filter;

  /// Creates a new [RouterNatLogConfig].
  /// [enable] Indicates whether or not to export logs.
  /// [filter] Specifies the desired filtering of logs on this NAT.
  RouterNatLogConfig({
    required this.enable,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['filter'] = filter;
    return map;
  }

  factory RouterNatLogConfig.fromMap(Map<String, dynamic> map) {
    return RouterNatLogConfig(
      enable: map['enable'] as bool,
      filter: map['filter'] as String,
    );
  }
}
