// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_response.dart';

/// Result data returned by getExperiment.
class GetExperimentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The description of the details or intents of the Experiment
  final String? description;
  /// The state of the Experiment
  final String? enabledState;
  /// The endpoint A of an experiment
  final EndpointResponse? endpointA;
  /// The endpoint B of an experiment
  final EndpointResponse? endpointB;
  /// Resource ID.
  final String id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Resource status.
  final String resourceState;
  /// The uri to the Script used in the Experiment
  final String scriptFileUri;
  /// The description of Experiment status from the server side
  final String status;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetExperimentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the details or intents of the Experiment
  /// [enabledState] The state of the Experiment
  /// [endpointA] The endpoint A of an experiment
  /// [endpointB] The endpoint B of an experiment
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [resourceState] Resource status.
  /// [scriptFileUri] The uri to the Script used in the Experiment
  /// [status] The description of Experiment status from the server side
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetExperimentResult({
    required this.azureApiVersion,
    this.description,
    this.enabledState,
    this.endpointA,
    this.endpointB,
    required this.id,
    this.location,
    required this.name,
    required this.resourceState,
    required this.scriptFileUri,
    required this.status,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'enabledState': ?enabledState,
      'endpointA': ?endpointA == null ? null : endpointA!.toMap(),
      'endpointB': ?endpointB == null ? null : endpointB!.toMap(),
      'id': id,
      'location': ?location,
      'name': name,
      'resourceState': resourceState,
      'scriptFileUri': scriptFileUri,
      'status': status,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetExperimentResult.fromMap(Map<String, dynamic> map) {
    return GetExperimentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      enabledState: map['enabledState'] == null ? null : map['enabledState']! as String,
      endpointA: map['endpointA'] == null ? null : EndpointResponse.fromMap((map['endpointA']! as Map).cast<String, dynamic>()),
      endpointB: map['endpointB'] == null ? null : EndpointResponse.fromMap((map['endpointB']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      resourceState: map['resourceState'] as String,
      scriptFileUri: map['scriptFileUri'] as String,
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

