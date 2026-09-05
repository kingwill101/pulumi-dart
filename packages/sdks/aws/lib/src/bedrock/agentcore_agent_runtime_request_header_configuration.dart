// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreAgentRuntimeRequestHeaderConfiguration {
  /// A list of HTTP request headers that are allowed to be passed through to the runtime.
  final pulumi.Input<List<String>?>? requestHeaderAllowlists;

  /// Creates a new [AgentcoreAgentRuntimeRequestHeaderConfiguration].
  /// [requestHeaderAllowlists] A list of HTTP request headers that are allowed to be passed through to the runtime.
  const AgentcoreAgentRuntimeRequestHeaderConfiguration({
    this.requestHeaderAllowlists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderAllowlists': ?requestHeaderAllowlists,
    };
  }

  factory AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeRequestHeaderConfiguration(
      requestHeaderAllowlists: (() { final guardedValue = map['requestHeaderAllowlists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
