// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_project_summary_response.dart';
import 'private_endpoint_connection_response.dart';

/// Properties of a migrate project.
class MigrateProjectPropertiesResponse {
  /// Last summary refresh time.
  final pulumi.Input<String> lastSummaryRefreshedTime;
  /// Gets the private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// Provisioning state of the migrate project.
  final pulumi.Input<String>? provisioningState;
  /// Gets or sets the state of public network access.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Refresh summary state.
  final pulumi.Input<String> refreshSummaryState;
  /// Register tools inside project.
  final pulumi.Input<List<String>> registeredTools;
  /// Service endpoint.
  final pulumi.Input<String>? serviceEndpoint;
  /// Project summary.
  final pulumi.Input<Map<String, DatabaseProjectSummaryResponse>> summary;
  /// Utility storage account id.
  final pulumi.Input<String>? utilityStorageAccountId;

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
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'refreshSummaryState': refreshSummaryState,
      'registeredTools': registeredTools,
      'serviceEndpoint': ?serviceEndpoint,
      'summary': pulumi.Input.mapInputValue<Map<String, DatabaseProjectSummaryResponse>, Map<String, Map<String, dynamic>>>(summary, (value) => pulumi.Input.encodeMapValues<DatabaseProjectSummaryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'utilityStorageAccountId': ?utilityStorageAccountId,
    };
  }

  factory MigrateProjectPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateProjectPropertiesResponse(
      lastSummaryRefreshedTime: (map['lastSummaryRefreshedTime'] as String).input(),
      privateEndpointConnections: (pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      refreshSummaryState: (map['refreshSummaryState'] as String).input(),
      registeredTools: ((map['registeredTools'] as List).cast<String>()).input(),
      serviceEndpoint: map['serviceEndpoint'] == null ? null : (map['serviceEndpoint'] as String).input(),
      summary: (pulumi.Input.decodeMapValues<DatabaseProjectSummaryResponse>(map['summary'], (value) => DatabaseProjectSummaryResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      utilityStorageAccountId: map['utilityStorageAccountId'] == null ? null : (map['utilityStorageAccountId'] as String).input(),
    );
  }
}

