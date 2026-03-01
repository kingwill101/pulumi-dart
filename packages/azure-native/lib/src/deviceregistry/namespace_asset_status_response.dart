// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_asset_status_dataset_response.dart';
import 'namespace_asset_status_event_response.dart';
import 'namespace_asset_status_management_group_response.dart';
import 'namespace_asset_status_stream_response.dart';
import 'status_config_response.dart';

/// Defines the asset status properties.
class NamespaceAssetStatusResponse {
  /// Defines the asset status config properties.
  final StatusConfigResponse config;
  /// Array of dataset statuses that describe the status of each dataset.
  final List<NamespaceAssetStatusDatasetResponse> datasets;
  /// Array of event statuses that describe the status of each event.
  final List<NamespaceAssetStatusEventResponse> events;
  /// Array of management group statuses that describe the status of each management group.
  final List<NamespaceAssetStatusManagementGroupResponse> managementGroups;
  /// Array of stream statuses that describe the status of each stream.
  final List<NamespaceAssetStatusStreamResponse> streams;

  /// Creates a new [NamespaceAssetStatusResponse].
  /// [config] Defines the asset status config properties.
  /// [datasets] Array of dataset statuses that describe the status of each dataset.
  /// [events] Array of event statuses that describe the status of each event.
  /// [managementGroups] Array of management group statuses that describe the status of each management group.
  /// [streams] Array of stream statuses that describe the status of each stream.
  NamespaceAssetStatusResponse({
    required this.config,
    required this.datasets,
    required this.events,
    required this.managementGroups,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config.toMap(),
      'datasets': pulumi.Input.encodeList<NamespaceAssetStatusDatasetResponse, Map<String, dynamic>>(datasets, (value) => value.toMap()),
      'events': pulumi.Input.encodeList<NamespaceAssetStatusEventResponse, Map<String, dynamic>>(events, (value) => value.toMap()),
      'managementGroups': pulumi.Input.encodeList<NamespaceAssetStatusManagementGroupResponse, Map<String, dynamic>>(managementGroups, (value) => value.toMap()),
      'streams': pulumi.Input.encodeList<NamespaceAssetStatusStreamResponse, Map<String, dynamic>>(streams, (value) => value.toMap()),
    };
  }

  factory NamespaceAssetStatusResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceAssetStatusResponse(
      config: StatusConfigResponse.fromMap((map['config'] as Map).cast<String, dynamic>()),
      datasets: pulumi.Input.decodeList<NamespaceAssetStatusDatasetResponse>(map['datasets'], (value) => NamespaceAssetStatusDatasetResponse.fromMap((value as Map).cast<String, dynamic>())),
      events: pulumi.Input.decodeList<NamespaceAssetStatusEventResponse>(map['events'], (value) => NamespaceAssetStatusEventResponse.fromMap((value as Map).cast<String, dynamic>())),
      managementGroups: pulumi.Input.decodeList<NamespaceAssetStatusManagementGroupResponse>(map['managementGroups'], (value) => NamespaceAssetStatusManagementGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      streams: pulumi.Input.decodeList<NamespaceAssetStatusStreamResponse>(map['streams'], (value) => NamespaceAssetStatusStreamResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

