// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flavor_data_response.dart';

/// Model asset version details.
class ModelVersionResponse {
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Mapping of model flavors to their properties.
  final pulumi.Input<Map<String, FlavorDataResponse>>? flavors;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// Name of the training job which produced this model
  final pulumi.Input<String>? jobName;
  /// The storage format for this entity. Used for NCD.
  final pulumi.Input<String>? modelType;
  /// The URI path to the model contents.
  final pulumi.Input<String>? modelUri;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Provisioning state for the model version.
  final pulumi.Input<String> provisioningState;
  /// Stage in the model lifecycle assigned to this model
  final pulumi.Input<String>? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ModelVersionResponse].
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
  ModelVersionResponse({
    this.description,
    this.flavors,
    this.isAnonymous,
    this.isArchived,
    this.jobName,
    this.modelType,
    this.modelUri,
    this.properties,
    required this.provisioningState,
    this.stage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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

  factory ModelVersionResponse.fromMap(Map<String, dynamic> map) {
    return ModelVersionResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      flavors: map['flavors'] == null ? null : (pulumi.Input.decodeMapValues<FlavorDataResponse>(map['flavors']!, (value) => FlavorDataResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isAnonymous: map['isAnonymous'] == null ? null : (map['isAnonymous']! as bool).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived']! as bool).input(),
      jobName: map['jobName'] == null ? null : (map['jobName']! as String).input(),
      modelType: map['modelType'] == null ? null : (map['modelType']! as String).input(),
      modelUri: map['modelUri'] == null ? null : (map['modelUri']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      stage: map['stage'] == null ? null : (map['stage']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

