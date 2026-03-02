// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datadog_install_method_response.dart';
import 'datadog_logs_agent_response.dart';

class DatadogHostMetadataResponse {
  /// The agent version.
  final pulumi.Input<String>? agentVersion;
  final pulumi.Input<DatadogInstallMethodResponse>? installMethod;
  final pulumi.Input<DatadogLogsAgentResponse>? logsAgent;

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
      'installMethod': ?pulumi.Input.mapOptionalInputValue<DatadogInstallMethodResponse, Map<String, dynamic>>(installMethod, (value) => value.toMap()),
      'logsAgent': ?pulumi.Input.mapOptionalInputValue<DatadogLogsAgentResponse, Map<String, dynamic>>(logsAgent, (value) => value.toMap()),
    };
  }

  factory DatadogHostMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DatadogHostMetadataResponse(
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion'] as String).input(),
      installMethod: map['installMethod'] == null ? null : (DatadogInstallMethodResponse.fromMap((map['installMethod'] as Map).cast<String, dynamic>())).input(),
      logsAgent: map['logsAgent'] == null ? null : (DatadogLogsAgentResponse.fromMap((map['logsAgent'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

