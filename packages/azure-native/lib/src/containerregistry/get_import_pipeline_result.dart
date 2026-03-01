// ignore_for_file: unused_element, unnecessary_cast

import 'identity_properties_response.dart';
import 'import_pipeline_source_properties_response.dart';
import 'pipeline_trigger_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getImportPipeline.
class GetImportPipelineResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID.
  final String id;
  /// The identity of the import pipeline.
  final IdentityPropertiesResponse? identity;
  /// The location of the import pipeline.
  final String? location;
  /// The name of the resource.
  final String name;
  /// The list of all options configured for the pipeline.
  final List<String>? options;
  /// The provisioning state of the pipeline at the time the operation was called.
  final String provisioningState;
  /// The source properties of the import pipeline.
  final ImportPipelineSourcePropertiesResponse source;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The properties that describe the trigger of the import pipeline.
  final PipelineTriggerPropertiesResponse? trigger;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetImportPipelineResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource ID.
  /// [identity] The identity of the import pipeline.
  /// [location] The location of the import pipeline.
  /// [name] The name of the resource.
  /// [options] The list of all options configured for the pipeline.
  /// [provisioningState] The provisioning state of the pipeline at the time the operation was called.
  /// [source] The source properties of the import pipeline.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [trigger] The properties that describe the trigger of the import pipeline.
  /// [type] The type of the resource.
  GetImportPipelineResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    this.options,
    required this.provisioningState,
    required this.source,
    required this.systemData,
    this.trigger,
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
      'source': source.toMap(),
      'systemData': systemData.toMap(),
      'trigger': ?trigger == null ? null : trigger!.toMap(),
      'type': type,
    };
  }

  factory GetImportPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetImportPipelineResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityPropertiesResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      options: map['options'] == null ? null : (map['options'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      source: ImportPipelineSourcePropertiesResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      trigger: map['trigger'] == null ? null : PipelineTriggerPropertiesResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

