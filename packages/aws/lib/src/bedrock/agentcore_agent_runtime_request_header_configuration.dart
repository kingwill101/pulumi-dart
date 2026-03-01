// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreAgentRuntimeRequestHeaderConfiguration {
  /// A list of HTTP request headers that are allowed to be passed through to the runtime.
  final List<String>? requestHeaderAllowlists;

  /// Creates a new [AgentcoreAgentRuntimeRequestHeaderConfiguration].
  /// [requestHeaderAllowlists] A list of HTTP request headers that are allowed to be passed through to the runtime.
  AgentcoreAgentRuntimeRequestHeaderConfiguration({
    this.requestHeaderAllowlists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderAllowlists': ?requestHeaderAllowlists,
    };
  }

  factory AgentcoreAgentRuntimeRequestHeaderConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreAgentRuntimeRequestHeaderConfiguration(
      requestHeaderAllowlists: map['requestHeaderAllowlists'] == null
          ? null
          : (map['requestHeaderAllowlists'] as List).cast<String>(),
    );
  }
}
