// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'append_variable_activity_response.dart';
import 'parameter_specification_response.dart';
import 'pipeline_policy_response.dart';
import 'pipeline_response_folder.dart';
import 'variable_specification_response.dart';

/// Result data returned by getPipeline.
class GetPipelineResult {
  /// List of activities in pipeline.
  final List<AppendVariableActivityResponse>? activities;
  /// List of tags that can be used for describing the Pipeline.
  final List<dynamic>? annotations;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The max number of concurrent runs for the pipeline.
  final int? concurrency;
  /// The description of the pipeline.
  final String? description;
  /// Etag identifies change in the resource.
  final String etag;
  /// The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
  final PipelineResponseFolder? folder;
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// List of parameters for pipeline.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Pipeline Policy.
  final PipelinePolicyResponse? policy;
  /// Dimensions emitted by Pipeline.
  final Map<String, dynamic>? runDimensions;
  /// The resource type.
  final String type;
  /// List of variables for pipeline.
  final Map<String, VariableSpecificationResponse>? variables;

  /// Creates a new [GetPipelineResult].
  /// [activities] List of activities in pipeline.
  /// [annotations] List of tags that can be used for describing the Pipeline.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [concurrency] The max number of concurrent runs for the pipeline.
  /// [description] The description of the pipeline.
  /// [etag] Etag identifies change in the resource.
  /// [folder] The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [parameters] List of parameters for pipeline.
  /// [policy] Pipeline Policy.
  /// [runDimensions] Dimensions emitted by Pipeline.
  /// [type] The resource type.
  /// [variables] List of variables for pipeline.
  GetPipelineResult({
    this.activities,
    this.annotations,
    required this.azureApiVersion,
    this.concurrency,
    this.description,
    required this.etag,
    this.folder,
    required this.id,
    required this.name,
    this.parameters,
    this.policy,
    this.runDimensions,
    required this.type,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities': ?activities == null ? null : pulumi.Input.encodeList<AppendVariableActivityResponse, Map<String, dynamic>>(activities!, (value) => value.toMap()),
      'annotations': ?annotations,
      'azureApiVersion': azureApiVersion,
      'concurrency': ?concurrency,
      'description': ?description,
      'etag': etag,
      'folder': ?folder == null ? null : folder!.toMap(),
      'id': id,
      'name': name,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'policy': ?policy == null ? null : policy!.toMap(),
      'runDimensions': ?runDimensions,
      'type': type,
      'variables': ?variables == null ? null : pulumi.Input.encodeMapValues<VariableSpecificationResponse, Map<String, dynamic>>(variables!, (value) => value.toMap()),
    };
  }

  factory GetPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineResult(
      activities: map['activities'] == null ? null : pulumi.Input.decodeList<AppendVariableActivityResponse>(map['activities']!, (value) => AppendVariableActivityResponse.fromMap((value as Map).cast<String, dynamic>())),
      annotations: map['annotations'] == null ? null : (map['annotations']! as List).cast<dynamic>(),
      azureApiVersion: map['azureApiVersion'] as String,
      concurrency: map['concurrency'] == null ? null : map['concurrency']! as int,
      description: map['description'] == null ? null : map['description']! as String,
      etag: map['etag'] as String,
      folder: map['folder'] == null ? null : PipelineResponseFolder.fromMap((map['folder']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      policy: map['policy'] == null ? null : PipelinePolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>()),
      runDimensions: map['runDimensions'] == null ? null : (map['runDimensions']! as Map).cast<String, dynamic>(),
      type: map['type'] as String,
      variables: map['variables'] == null ? null : pulumi.Input.decodeMapValues<VariableSpecificationResponse>(map['variables']!, (value) => VariableSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

