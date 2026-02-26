// ignore_for_file: unused_element, unnecessary_cast

class EventEndpointReplicationConfig {
  /// The state of event replication. Valid values: `ENABLED`, `DISABLED`. The default state is `ENABLED`, which means you must supply a <span pulumi-lang-nodejs="`roleArn`" pulumi-lang-dotnet="`RoleArn`" pulumi-lang-go="`roleArn`" pulumi-lang-python="`role_arn`" pulumi-lang-yaml="`roleArn`" pulumi-lang-java="`roleArn`">`role_arn`</span>. If you don't have a <span pulumi-lang-nodejs="`roleArn`" pulumi-lang-dotnet="`RoleArn`" pulumi-lang-go="`roleArn`" pulumi-lang-python="`role_arn`" pulumi-lang-yaml="`roleArn`" pulumi-lang-java="`roleArn`">`role_arn`</span> or you don't want event replication enabled, set <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> to `DISABLED`.
  final String? state;

  EventEndpointReplicationConfig({
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory EventEndpointReplicationConfig.fromMap(Map<String, dynamic> map) {
    return EventEndpointReplicationConfig(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
