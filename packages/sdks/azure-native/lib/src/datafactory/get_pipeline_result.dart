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
      'activities': ?(() {
        final guardedValue = activities;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          AppendVariableActivityResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'annotations': ?annotations,
      'azureApiVersion': azureApiVersion,
      'concurrency': ?concurrency,
      'description': ?description,
      'etag': etag,
      'folder': ?folder?.toMap(),
      'id': id,
      'name': name,
      'parameters': ?(() {
        final guardedValue = parameters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeMapValues<
          ParameterSpecificationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'policy': ?policy?.toMap(),
      'runDimensions': ?runDimensions,
      'type': type,
      'variables': ?(() {
        final guardedValue = variables;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeMapValues<
          VariableSpecificationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineResult(
      activities: (() {
        final guardedValue = map['activities'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<AppendVariableActivityResponse>(
          guardedValue,
          (value) => AppendVariableActivityResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<dynamic>();
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      concurrency: (() {
        final guardedValue = map['concurrency'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      etag: map['etag'] as String,
      folder: (() {
        final guardedValue = map['folder'];
        if (guardedValue == null) return null;
        return PipelineResponseFolder.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
          guardedValue,
          (value) => ParameterSpecificationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return PipelinePolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      runDimensions: (() {
        final guardedValue = map['runDimensions'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, dynamic>();
      })(),
      type: map['type'] as String,
      variables: (() {
        final guardedValue = map['variables'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeMapValues<VariableSpecificationResponse>(
          guardedValue,
          (value) => VariableSpecificationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
