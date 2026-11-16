// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_v2_connector_provider_azure.dart';
import 'connector_v2_connector_provider_jira_cloud.dart';
import 'connector_v2_connector_provider_service_now.dart';

class ConnectorV2ConnectorProvider {
  /// Details about a Microsoft Azure integration for multi-cloud coverage. See `azure` below.
  final pulumi.Input<ConnectorV2ConnectorProviderAzure?>? azure;
  /// Details about a Jira Cloud integration. See `jiraCloud` below.
  final pulumi.Input<ConnectorV2ConnectorProviderJiraCloud?>? jiraCloud;
  /// Details about a ServiceNow ITSM integration. See `serviceNow` below.
  ///
  /// Exactly one of `azure`, `jiraCloud`, or `serviceNow` must be specified.
  final pulumi.Input<ConnectorV2ConnectorProviderServiceNow?>? serviceNow;

  /// Creates a new [ConnectorV2ConnectorProvider].
  /// [azure] Details about a Microsoft Azure integration for multi-cloud coverage. See `azure` below.
  /// [jiraCloud] Details about a Jira Cloud integration. See `jiraCloud` below.
  /// [serviceNow] Details about a ServiceNow ITSM integration. See `serviceNow` below.
  const ConnectorV2ConnectorProvider({
    this.azure,
    this.jiraCloud,
    this.serviceNow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azure': ?pulumi.Input.mapOptionalInputValue<ConnectorV2ConnectorProviderAzure, Map<String, dynamic>>(azure, (value) => value.toMap()),
      'jiraCloud': ?pulumi.Input.mapOptionalInputValue<ConnectorV2ConnectorProviderJiraCloud, Map<String, dynamic>>(jiraCloud, (value) => value.toMap()),
      'serviceNow': ?pulumi.Input.mapOptionalInputValue<ConnectorV2ConnectorProviderServiceNow, Map<String, dynamic>>(serviceNow, (value) => value.toMap()),
    };
  }

  factory ConnectorV2ConnectorProvider.fromMap(Map<String, dynamic> map) {
    return ConnectorV2ConnectorProvider(
      azure: (() { final guardedValue = map['azure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorV2ConnectorProviderAzure.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jiraCloud: (() { final guardedValue = map['jiraCloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorV2ConnectorProviderJiraCloud.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceNow: (() { final guardedValue = map['serviceNow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorV2ConnectorProviderServiceNow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
