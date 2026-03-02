// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_status_dataset_response.dart';
import 'asset_status_error_response.dart';
import 'asset_status_event_response.dart';

/// Defines the asset status properties.
class AssetStatusResponse {
  /// Array of dataset statuses that describe the status of each dataset.
  final pulumi.Input<List<AssetStatusDatasetResponse>> datasets;
  /// Array object to transfer and persist errors that originate from the Edge.
  final pulumi.Input<List<AssetStatusErrorResponse>> errors;
  /// Array of event statuses that describe the status of each event.
  final pulumi.Input<List<AssetStatusEventResponse>> events;
  /// A read only incremental counter indicating the number of times the configuration has been modified from the perspective of the current actual (Edge) state of the Asset. Edge would be the only writer of this value and would sync back up to the cloud. In steady state, this should equal version.
  final pulumi.Input<double> version;

  /// Creates a new [AssetStatusResponse].
  /// [datasets] Array of dataset statuses that describe the status of each dataset.
  /// [errors] Array object to transfer and persist errors that originate from the Edge.
  /// [events] Array of event statuses that describe the status of each event.
  /// [version] A read only incremental counter indicating the number of times the configuration has been modified from the perspective of the current actual (Edge) state of the Asset. Edge would be the only writer of this value and would sync back up to the cloud. In steady state, this should equal version.
  AssetStatusResponse({
    required this.datasets,
    required this.errors,
    required this.events,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': pulumi.Input.mapInputValue<List<AssetStatusDatasetResponse>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<AssetStatusDatasetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': pulumi.Input.mapInputValue<List<AssetStatusErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AssetStatusErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'events': pulumi.Input.mapInputValue<List<AssetStatusEventResponse>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<AssetStatusEventResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': version,
    };
  }

  factory AssetStatusResponse.fromMap(Map<String, dynamic> map) {
    return AssetStatusResponse(
      datasets: (pulumi.Input.decodeList<AssetStatusDatasetResponse>(map['datasets'], (value) => AssetStatusDatasetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      errors: (pulumi.Input.decodeList<AssetStatusErrorResponse>(map['errors'], (value) => AssetStatusErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      events: (pulumi.Input.decodeList<AssetStatusEventResponse>(map['events'], (value) => AssetStatusEventResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: (map['version'] as double).input(),
    );
  }
}

