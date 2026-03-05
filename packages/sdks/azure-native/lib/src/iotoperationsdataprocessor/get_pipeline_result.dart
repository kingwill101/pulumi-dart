// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'pipeline_input_response.dart';
import 'pipeline_stage_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPipeline.
class GetPipelineResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Detailed description of the Pipeline.
  final String? description;
  /// Flag indicating whether the pipeline should be running or not.
  final bool enabled;
  /// Edge location of the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Information about where to pull input data from.
  final PipelineInputResponse input;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Map of stage ids to stage configurations for all pipeline processing and output stages.
  final Map<String, PipelineStageResponse> stages;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPipelineResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Detailed description of the Pipeline.
  /// [enabled] Flag indicating whether the pipeline should be running or not.
  /// [extendedLocation] Edge location of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [input] Information about where to pull input data from.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [stages] Map of stage ids to stage configurations for all pipeline processing and output stages.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPipelineResult({
    required this.azureApiVersion,
    this.description,
    required this.enabled,
    required this.extendedLocation,
    required this.id,
    required this.input,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.stages,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'enabled': enabled,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'input': input.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'stages': pulumi.Input.encodeMapValues<PipelineStageResponse, Map<String, dynamic>>(stages, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: map['enabled'] as bool,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      input: PipelineInputResponse.fromMap((map['input']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      stages: pulumi.Input.decodeMapValues<PipelineStageResponse>(map['stages']!, (value) => PipelineStageResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

