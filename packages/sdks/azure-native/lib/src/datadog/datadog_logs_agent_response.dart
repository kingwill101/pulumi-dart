// ignore_for_file: unused_element, unnecessary_cast


class DatadogLogsAgentResponse {
  /// The transport.
  final String? transport;

  /// Creates a new [DatadogLogsAgentResponse].
  /// [transport] The transport.
  DatadogLogsAgentResponse({
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transport': ?transport,
    };
  }

  factory DatadogLogsAgentResponse.fromMap(Map<String, dynamic> map) {
    return DatadogLogsAgentResponse(
      transport: map['transport'] == null ? null : map['transport'] as String,
    );
  }
}

