// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_project_summary_response.dart';
import 'private_endpoint_connection_response.dart';

/// Properties of a migrate project.
class MigrateProjectPropertiesResponse {
  /// Last summary refresh time.
  final pulumi.Input<String> lastSummaryRefreshedTime;

  /// Gets the private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>>
  privateEndpointConnections;

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
      'privateEndpointConnections':
          pulumi.Input.mapInputValue<
            List<PrivateEndpointConnectionResponse>,
            List<Map<String, dynamic>>
          >(
            privateEndpointConnections,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateEndpointConnectionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'refreshSummaryState': refreshSummaryState,
      'registeredTools': registeredTools,
      'serviceEndpoint': ?serviceEndpoint,
      'summary':
          pulumi.Input.mapInputValue<
            Map<String, DatabaseProjectSummaryResponse>,
            Map<String, Map<String, dynamic>>
          >(
            summary,
            (value) =>
                pulumi.Input.encodeMapValues<
                  DatabaseProjectSummaryResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'utilityStorageAccountId': ?utilityStorageAccountId,
    };
  }

  factory MigrateProjectPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateProjectPropertiesResponse(
      lastSummaryRefreshedTime: pulumi.Input.fromValue(
        map['lastSummaryRefreshedTime'] as String,
      ),
      privateEndpointConnections: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(
          map['privateEndpointConnections']!,
          (value) => PrivateEndpointConnectionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshSummaryState: pulumi.Input.fromValue(
        map['refreshSummaryState'] as String,
      ),
      registeredTools: pulumi.Input.fromValue(
        (map['registeredTools'] as List).cast<String>(),
      ),
      serviceEndpoint: (() {
        final guardedValue = map['serviceEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      summary: pulumi.Input.fromValue(
        pulumi.Input.decodeMapValues<DatabaseProjectSummaryResponse>(
          map['summary']!,
          (value) => DatabaseProjectSummaryResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      utilityStorageAccountId: (() {
        final guardedValue = map['utilityStorageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
