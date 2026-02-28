// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigHttpCheckServiceAgentAuthentication {
  /// The type of authentication to use.
  /// Possible values are: `SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED`, `OIDC_TOKEN`.
  final String? type;

  /// Creates a new [UptimeCheckConfigHttpCheckServiceAgentAuthentication].
  /// [type] The type of authentication to use.
  UptimeCheckConfigHttpCheckServiceAgentAuthentication({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory UptimeCheckConfigHttpCheckServiceAgentAuthentication.fromMap(
      Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheckServiceAgentAuthentication(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
