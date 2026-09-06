// ignore_for_file: unused_element, unnecessary_cast

import 'identity_properties_response.dart';
import 'import_pipeline_source_properties_response.dart';
import 'pipeline_trigger_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getImportPipeline.
class GetImportPipelineResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource ID.
  final String? id;
  /// The identity of the import pipeline.
  final IdentityPropertiesResponse? identity;
  /// The location of the import pipeline.
  final String? location;
  /// The name of the resource.
  final String? name;
  /// The list of all options configured for the pipeline.
  final List<String>? options;
  /// The provisioning state of the pipeline at the time the operation was called.
  final String? provisioningState;
  /// The source properties of the import pipeline.
  final ImportPipelineSourcePropertiesResponse? source;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The properties that describe the trigger of the import pipeline.
  final PipelineTriggerPropertiesResponse? trigger;
  /// The type of the resource.
  final String? type;

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
  const GetImportPipelineResult({
    this.azureApiVersion,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.options,
    this.provisioningState,
    this.source,
    this.systemData,
    this.trigger,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'options': ?options,
      'provisioningState': ?provisioningState,
      'source': ?source?.toMap(),
      'systemData': ?systemData?.toMap(),
      'trigger': ?trigger?.toMap(),
      'type': ?type,
    };
  }

  factory GetImportPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetImportPipelineResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return ImportPipelineSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return PipelineTriggerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
