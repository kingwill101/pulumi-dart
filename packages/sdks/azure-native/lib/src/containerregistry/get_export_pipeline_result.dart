// ignore_for_file: unused_element, unnecessary_cast

import 'export_pipeline_target_properties_response.dart';
import 'identity_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getExportPipeline.
class GetExportPipelineResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID.
  final String id;
  /// The identity of the export pipeline.
  final IdentityPropertiesResponse? identity;
  /// The location of the export pipeline.
  final String? location;
  /// The name of the resource.
  final String name;
  /// The list of all options configured for the pipeline.
  final List<String>? options;
  /// The provisioning state of the pipeline at the time the operation was called.
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The target properties of the export pipeline.
  final ExportPipelineTargetPropertiesResponse target;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetExportPipelineResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource ID.
  /// [identity] The identity of the export pipeline.
  /// [location] The location of the export pipeline.
  /// [name] The name of the resource.
  /// [options] The list of all options configured for the pipeline.
  /// [provisioningState] The provisioning state of the pipeline at the time the operation was called.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [target] The target properties of the export pipeline.
  /// [type] The type of the resource.
  GetExportPipelineResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    this.options,
    required this.provisioningState,
    required this.systemData,
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'options': ?options,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'target': target.toMap(),
      'type': type,
    };
  }

  factory GetExportPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetExportPipelineResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityPropertiesResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      options: map['options'] == null ? null : (map['options']! as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      target: ExportPipelineTargetPropertiesResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

