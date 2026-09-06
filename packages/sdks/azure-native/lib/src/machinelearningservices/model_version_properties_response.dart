// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_reference_response.dart';
import 'flavor_data_response.dart';

/// Model asset version details.
class ModelVersionPropertiesResponse {
  /// Array of dataset references
  final pulumi.Input<List<DatasetReferenceResponse>?>? datasets;
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// Mapping of model flavors to their properties.
  final pulumi.Input<Map<String, FlavorDataResponse>?>? flavors;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool?>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool?>? isArchived;
  /// Name of the training job which produced this model
  final pulumi.Input<String?>? jobName;
  /// The storage format for this entity. Used for NCD.
  final pulumi.Input<String?>? modelType;
  /// The URI path to the model contents.
  final pulumi.Input<String?>? modelUri;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Provisioning state for the model version.
  final pulumi.Input<String> provisioningState;
  /// Stage in the model lifecycle assigned to this model
  final pulumi.Input<String?>? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ModelVersionPropertiesResponse].
  /// [datasets] Array of dataset references
  /// [description] The asset description text.
  /// [flavors] Mapping of model flavors to their properties.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [jobName] Name of the training job which produced this model
  /// [modelType] The storage format for this entity. Used for NCD.
  /// [modelUri] The URI path to the model contents.
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the model version.
  /// [stage] Stage in the model lifecycle assigned to this model
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  ModelVersionPropertiesResponse({
    this.datasets,
    this.description,
    this.flavors,
    pulumi.Input<bool?>? isAnonymous,
    pulumi.Input<bool?>? isArchived,
    this.jobName,
    this.modelType,
    this.modelUri,
    this.properties,
    required this.provisioningState,
    this.stage,
    this.tags,
  }) : isAnonymous = isAnonymous ?? pulumi.Input.fromValue(false), isArchived = isArchived ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': ?pulumi.Input.mapOptionalInputValue<List<DatasetReferenceResponse>, List<Map<String, dynamic>>>(datasets, (value) => pulumi.Input.encodeList<DatasetReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'flavors': ?pulumi.Input.mapOptionalInputValue<Map<String, FlavorDataResponse>, Map<String, Map<String, dynamic>>>(flavors, (value) => pulumi.Input.encodeMapValues<FlavorDataResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'jobName': ?jobName,
      'modelType': ?modelType,
      'modelUri': ?modelUri,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory ModelVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ModelVersionPropertiesResponse(
      datasets: (() { final guardedValue = map['datasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatasetReferenceResponse>(guardedValue, (value) => DatasetReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flavors: (() { final guardedValue = map['flavors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<FlavorDataResponse>(guardedValue, (value) => FlavorDataResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isAnonymous: (() { final guardedValue = map['isAnonymous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelType: (() { final guardedValue = map['modelType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelUri: (() { final guardedValue = map['modelUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
