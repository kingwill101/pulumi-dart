// ignore_for_file: unused_element, unnecessary_cast

import 'datadog_install_method_response.dart';
import 'datadog_logs_agent_response.dart';

class DatadogHostMetadataResponse {
  /// The agent version.
  final String? agentVersion;
  final DatadogInstallMethodResponse? installMethod;
  final DatadogLogsAgentResponse? logsAgent;

  /// Creates a new [DatadogHostMetadataResponse].
  /// [agentVersion] The agent version.
  /// [installMethod] Optional.
  /// [logsAgent] Optional.
  DatadogHostMetadataResponse({
    this.agentVersion,
    this.installMethod,
    this.logsAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'installMethod': ?installMethod == null ? null : installMethod!.toMap(),
      'logsAgent': ?logsAgent == null ? null : logsAgent!.toMap(),
    };
  }

  factory DatadogHostMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DatadogHostMetadataResponse(
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
      installMethod: map['installMethod'] == null ? null : DatadogInstallMethodResponse.fromMap((map['installMethod'] as Map).cast<String, dynamic>()),
      logsAgent: map['logsAgent'] == null ? null : DatadogLogsAgentResponse.fromMap((map['logsAgent'] as Map).cast<String, dynamic>()),
    );
  }
}

