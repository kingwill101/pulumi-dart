// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_project_summary_response.dart';
import 'private_endpoint_connection_response.dart';

/// Properties of a migrate project.
class MigrateProjectPropertiesResponse {
  /// Last summary refresh time.
  final String lastSummaryRefreshedTime;
  /// Gets the private endpoint connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Provisioning state of the migrate project.
  final String? provisioningState;
  /// Gets or sets the state of public network access.
  final String? publicNetworkAccess;
  /// Refresh summary state.
  final String refreshSummaryState;
  /// Register tools inside project.
  final List<String> registeredTools;
  /// Service endpoint.
  final String? serviceEndpoint;
  /// Project summary.
  final Map<String, DatabaseProjectSummaryResponse> summary;
  /// Utility storage account id.
  final String? utilityStorageAccountId;

  /// Creates a new [MigrateProjectPropertiesResponse].
  /// [lastSummaryRefreshedTime] Last summary refresh time.
  /// [privateEndpointConnections] Gets the private endpoint connections.
  /// [provisioningState] Provisioning state of the migrate project.
  /// [publicNetworkAccess] Gets or sets the state of public network access.
  /// [refreshSummaryState] Refresh summary state.
  /// [registeredTools] Register tools inside project.
  /// [serviceEndpoint] Service endpoint.
  /// [summary] Project summary.
  /// [utilityStorageAccountId] Utility storage account id.
  MigrateProjectPropertiesResponse({
    required this.lastSummaryRefreshedTime,
    required this.privateEndpointConnections,
    this.provisioningState,
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
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'refreshSummaryState': refreshSummaryState,
      'registeredTools': registeredTools,
      'serviceEndpoint': ?serviceEndpoint,
      'summary': pulumi.Input.encodeMapValues<DatabaseProjectSummaryResponse, Map<String, dynamic>>(summary, (value) => value.toMap()),
      'utilityStorageAccountId': ?utilityStorageAccountId,
    };
  }

  factory MigrateProjectPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateProjectPropertiesResponse(
      lastSummaryRefreshedTime: map['lastSummaryRefreshedTime'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      refreshSummaryState: map['refreshSummaryState'] as String,
      registeredTools: (map['registeredTools'] as List).cast<String>(),
      serviceEndpoint: map['serviceEndpoint'] == null ? null : map['serviceEndpoint'] as String,
      summary: pulumi.Input.decodeMapValues<DatabaseProjectSummaryResponse>(map['summary'], (value) => DatabaseProjectSummaryResponse.fromMap((value as Map).cast<String, dynamic>())),
      utilityStorageAccountId: map['utilityStorageAccountId'] == null ? null : map['utilityStorageAccountId'] as String,
    );
  }
}

