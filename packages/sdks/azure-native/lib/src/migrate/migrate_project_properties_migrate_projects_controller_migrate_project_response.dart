// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_migrate_projects_controller_migrate_project_response.dart';
import 'project_summary_response.dart';

/// Properties of a migrate project.
class MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse {
  /// Last summary refresh time.
  final pulumi.Input<String> lastSummaryRefreshedTime;
  /// Gets the private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse>> privateEndpointConnections;
  /// Gets or sets the state of public network access.
  final pulumi.Input<String?>? publicNetworkAccess;
  /// Refresh summary state.
  final pulumi.Input<String> refreshSummaryState;
  /// Register tools inside project.
  final pulumi.Input<List<String>> registeredTools;
  /// Service endpoint.
  final pulumi.Input<String?>? serviceEndpoint;
  /// Project summary.
  final pulumi.Input<Map<String, ProjectSummaryResponse>> summary;
  /// Utility storage account id.
  final pulumi.Input<String?>? utilityStorageAccountId;

  /// Creates a new [MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse].
  /// [lastSummaryRefreshedTime] Last summary refresh time.
  /// [privateEndpointConnections] Gets the private endpoint connections.
  /// [publicNetworkAccess] Gets or sets the state of public network access.
  /// [refreshSummaryState] Refresh summary state.
  /// [registeredTools] Register tools inside project.
  /// [serviceEndpoint] Service endpoint.
  /// [summary] Project summary.
  /// [utilityStorageAccountId] Utility storage account id.
  const MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse({
    required this.lastSummaryRefreshedTime,
    required this.privateEndpointConnections,
    this.publicNetworkAccess,
    required this.refreshSummaryState,
    required this.registeredTools,
    this.serviceEndpoint,
    required this.summary,
    this.utilityStorageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastSummaryRefreshedTime': lastSummaryRefreshedTime,
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
      'refreshSummaryState': refreshSummaryState,
      'registeredTools': registeredTools,
      'serviceEndpoint': ?serviceEndpoint,
      'summary': pulumi.Input.mapInputValue<Map<String, ProjectSummaryResponse>, Map<String, Map<String, dynamic>>>(summary, (value) => pulumi.Input.encodeMapValues<ProjectSummaryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'utilityStorageAccountId': ?utilityStorageAccountId,
    };
  }

  factory MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse.fromMap(Map<String, dynamic> map) {
    return MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse(
      lastSummaryRefreshedTime: pulumi.Input.fromValue(map['lastSummaryRefreshedTime'] as String),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse.fromMap((value as Map).cast<String, dynamic>()))),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshSummaryState: pulumi.Input.fromValue(map['refreshSummaryState'] as String),
      registeredTools: pulumi.Input.fromValue((map['registeredTools'] as List).cast<String>()),
      serviceEndpoint: (() { final guardedValue = map['serviceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summary: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ProjectSummaryResponse>(map['summary']!, (value) => ProjectSummaryResponse.fromMap((value as Map).cast<String, dynamic>()))),
      utilityStorageAccountId: (() { final guardedValue = map['utilityStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
