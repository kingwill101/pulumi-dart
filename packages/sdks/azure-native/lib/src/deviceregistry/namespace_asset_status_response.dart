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
  final pulumi.Input<StatusConfigResponse> config;

  /// Array of dataset statuses that describe the status of each dataset.
  final pulumi.Input<List<NamespaceAssetStatusDatasetResponse>> datasets;

  /// Array of event statuses that describe the status of each event.
  final pulumi.Input<List<NamespaceAssetStatusEventResponse>> events;

  /// Array of management group statuses that describe the status of each management group.
  final pulumi.Input<List<NamespaceAssetStatusManagementGroupResponse>>
  managementGroups;

  /// Array of stream statuses that describe the status of each stream.
  final pulumi.Input<List<NamespaceAssetStatusStreamResponse>> streams;

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
      'config':
          pulumi.Input.mapInputValue<
            StatusConfigResponse,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'datasets':
          pulumi.Input.mapInputValue<
            List<NamespaceAssetStatusDatasetResponse>,
            List<Map<String, dynamic>>
          >(
            datasets,
            (value) =>
                pulumi.Input.encodeList<
                  NamespaceAssetStatusDatasetResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'events':
          pulumi.Input.mapInputValue<
            List<NamespaceAssetStatusEventResponse>,
            List<Map<String, dynamic>>
          >(
            events,
            (value) =>
                pulumi.Input.encodeList<
                  NamespaceAssetStatusEventResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'managementGroups':
          pulumi.Input.mapInputValue<
            List<NamespaceAssetStatusManagementGroupResponse>,
            List<Map<String, dynamic>>
          >(
            managementGroups,
            (value) =>
                pulumi.Input.encodeList<
                  NamespaceAssetStatusManagementGroupResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'streams':
          pulumi.Input.mapInputValue<
            List<NamespaceAssetStatusStreamResponse>,
            List<Map<String, dynamic>>
          >(
            streams,
            (value) =>
                pulumi.Input.encodeList<
                  NamespaceAssetStatusStreamResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NamespaceAssetStatusResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceAssetStatusResponse(
      config: pulumi.Input.fromValue(
        StatusConfigResponse.fromMap(
          (map['config']! as Map).cast<String, dynamic>(),
        ),
      ),
      datasets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NamespaceAssetStatusDatasetResponse>(
          map['datasets']!,
          (value) => NamespaceAssetStatusDatasetResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      events: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NamespaceAssetStatusEventResponse>(
          map['events']!,
          (value) => NamespaceAssetStatusEventResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      managementGroups: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NamespaceAssetStatusManagementGroupResponse>(
          map['managementGroups']!,
          (value) => NamespaceAssetStatusManagementGroupResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      streams: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NamespaceAssetStatusStreamResponse>(
          map['streams']!,
          (value) => NamespaceAssetStatusStreamResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
