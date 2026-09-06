// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datadog_install_method_response.dart';
import 'datadog_logs_agent_response.dart';

class DatadogHostMetadataResponse {
  /// The agent version.
  final pulumi.Input<String?>? agentVersion;
  final pulumi.Input<DatadogInstallMethodResponse?>? installMethod;
  final pulumi.Input<DatadogLogsAgentResponse?>? logsAgent;

  /// Creates a new [DatadogHostMetadataResponse].
  /// [agentVersion] The agent version.
  /// [installMethod] Optional.
  /// [logsAgent] Optional.
  const DatadogHostMetadataResponse({
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
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installMethod: (() { final guardedValue = map['installMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatadogInstallMethodResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logsAgent: (() { final guardedValue = map['logsAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatadogLogsAgentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
