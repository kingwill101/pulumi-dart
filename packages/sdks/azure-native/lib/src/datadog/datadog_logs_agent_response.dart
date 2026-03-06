// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatadogLogsAgentResponse {
  /// The transport.
  final pulumi.Input<String>? transport;

  /// Creates a new [DatadogLogsAgentResponse].
  /// [transport] The transport.
  const DatadogLogsAgentResponse({
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transport': ?transport,
    };
  }

  factory DatadogLogsAgentResponse.fromMap(Map<String, dynamic> map) {
    return DatadogLogsAgentResponse(
      transport: (() { final guardedValue = map['transport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

