// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_run_request_response.dart';
import 'pipeline_run_response_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPipelineRun.
class GetPipelineRunResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// How the pipeline run should be forced to recreate even if the pipeline run configuration has not changed.
  final String? forceUpdateTag;
  /// The resource ID.
  final String? id;
  /// The name of the resource.
  final String? name;
  /// The provisioning state of a pipeline run.
  final String? provisioningState;
  /// The request parameters for a pipeline run.
  final PipelineRunRequestResponse? request;
  /// The response of a pipeline run.
  final PipelineRunResponseResponse? response;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetPipelineRunResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [forceUpdateTag] How the pipeline run should be forced to recreate even if the pipeline run configuration has not changed.
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning state of a pipeline run.
  /// [request] The request parameters for a pipeline run.
  /// [response] The response of a pipeline run.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetPipelineRunResult({
    this.azureApiVersion,
    this.forceUpdateTag,
    this.id,
    this.name,
    this.provisioningState,
    this.request,
    this.response,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'forceUpdateTag': ?forceUpdateTag,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'request': ?request?.toMap(),
      'response': ?response?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetPipelineRunResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineRunResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return PipelineRunRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return PipelineRunResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
