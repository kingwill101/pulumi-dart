// ignore_for_file: unused_element, unnecessary_cast

class BrokerLogs {
  /// Whether to enable audit logging. Only possible for <span pulumi-lang-nodejs="`engineType`" pulumi-lang-dotnet="`EngineType`" pulumi-lang-go="`engineType`" pulumi-lang-python="`engine_type`" pulumi-lang-yaml="`engineType`" pulumi-lang-java="`engineType`">`engine_type`</span> of `ActiveMQ`. Logs user management actions via JMX or ActiveMQ Web Console. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? audit;

  /// Whether to enable general logging via CloudWatch. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? general;

  BrokerLogs({
    this.audit,
    this.general,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditValue = audit;
    if (auditValue != null) {
      map['audit'] = auditValue;
    }
    final generalValue = general;
    if (generalValue != null) {
      map['general'] = generalValue;
    }
    return map;
  }

  factory BrokerLogs.fromMap(Map<String, dynamic> map) {
    return BrokerLogs(
      audit: map['audit'] == null ? null : map['audit'] as bool,
      general: map['general'] == null ? null : map['general'] as bool,
    );
  }
}
