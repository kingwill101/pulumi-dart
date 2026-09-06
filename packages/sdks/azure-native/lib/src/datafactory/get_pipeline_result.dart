// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_specification_response.dart';
import 'pipeline_folder_response.dart';
import 'pipeline_policy_response.dart';
import 'system_data_response.dart';
import 'variable_specification_response.dart';

/// Result data returned by getPipeline.
class GetPipelineResult {
  /// List of activities in pipeline.
  final List<dynamic>? activities;
  /// List of tags that can be used for describing the Pipeline.
  final List<dynamic>? annotations;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The max number of concurrent runs for the pipeline.
  final int? concurrency;
  /// The description of the pipeline.
  final String? description;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  final String? etag;
  /// The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
  final PipelineFolderResponse? folder;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// List of parameters for pipeline.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Pipeline Policy.
  final PipelinePolicyResponse? policy;
  /// Dimensions emitted by Pipeline.
  final dynamic runDimensions;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// List of variables for pipeline.
  final Map<String, VariableSpecificationResponse>? variables;

  /// Creates a new [GetPipelineResult].
  /// [activities] List of activities in pipeline.
  /// [annotations] List of tags that can be used for describing the Pipeline.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [concurrency] The max number of concurrent runs for the pipeline.
  /// [description] The description of the pipeline.
  /// [etag] "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  /// [folder] The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [parameters] List of parameters for pipeline.
  /// [policy] Pipeline Policy.
  /// [runDimensions] Dimensions emitted by Pipeline.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [variables] List of variables for pipeline.
  const GetPipelineResult({
    this.activities,
    this.annotations,
    this.azureApiVersion,
    this.concurrency,
    this.description,
    this.etag,
    this.folder,
    this.id,
    this.name,
    this.parameters,
    this.policy,
    this.runDimensions,
    this.systemData,
    this.type,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities': ?activities,
      'annotations': ?annotations,
      'azureApiVersion': ?azureApiVersion,
      'concurrency': ?concurrency,
      'description': ?description,
      'etag': ?etag,
      'folder': ?folder?.toMap(),
      'id': ?id,
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policy': ?policy?.toMap(),
      'runDimensions': ?runDimensions,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'variables': ?(() { final guardedValue = variables; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<VariableSpecificationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPipelineResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineResult(
      activities: (() { final guardedValue = map['activities']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      concurrency: (() { final guardedValue = map['concurrency']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return PipelineFolderResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return PipelinePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      runDimensions: (() { final guardedValue = map['runDimensions']; if (guardedValue == null) return null; return guardedValue; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<VariableSpecificationResponse>(guardedValue, (value) => VariableSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
