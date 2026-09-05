// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_v2_connector_provider_jira_cloud.dart';
import 'connector_v2_connector_provider_service_now.dart';

class ConnectorV2ConnectorProvider {
  /// Details about a Jira Cloud integration. See `jiraCloud` below.
  final pulumi.Input<ConnectorV2ConnectorProviderJiraCloud?>? jiraCloud;
  /// Details about a ServiceNow ITSM integration. See `serviceNow` below.
  final pulumi.Input<ConnectorV2ConnectorProviderServiceNow?>? serviceNow;

  /// Creates a new [ConnectorV2ConnectorProvider].
  /// [jiraCloud] Details about a Jira Cloud integration. See `jiraCloud` below.
  /// [serviceNow] Details about a ServiceNow ITSM integration. See `serviceNow` below.
  const ConnectorV2ConnectorProvider({
    this.jiraCloud,
    this.serviceNow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jiraCloud': ?pulumi.Input.mapOptionalInputValue<ConnectorV2ConnectorProviderJiraCloud, Map<String, dynamic>>(jiraCloud, (value) => value.toMap()),
      'serviceNow': ?pulumi.Input.mapOptionalInputValue<ConnectorV2ConnectorProviderServiceNow, Map<String, dynamic>>(serviceNow, (value) => value.toMap()),
    };
  }

  factory ConnectorV2ConnectorProvider.fromMap(Map<String, dynamic> map) {
    return ConnectorV2ConnectorProvider(
      jiraCloud: (() { final guardedValue = map['jiraCloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorV2ConnectorProviderJiraCloud.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceNow: (() { final guardedValue = map['serviceNow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorV2ConnectorProviderServiceNow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
