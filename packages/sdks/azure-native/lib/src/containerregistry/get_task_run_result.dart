// ignore_for_file: unused_element, unnecessary_cast

import 'identity_properties_response.dart';
import 'run_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTaskRun.
class GetTaskRunResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// How the run should be forced to rerun even if the run request configuration has not changed
  final String? forceUpdateTag;
  /// The resource ID.
  final String? id;
  /// Identity for the resource.
  final IdentityPropertiesResponse? identity;
  /// The location of the resource
  final String? location;
  /// The name of the resource.
  final String? name;
  /// The provisioning state of this task run
  final String? provisioningState;
  /// The request (parameters) for the run
  final dynamic runRequest;
  /// The result of this task run
  final RunResponse? runResult;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetTaskRunResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [forceUpdateTag] How the run should be forced to rerun even if the run request configuration has not changed
  /// [id] The resource ID.
  /// [identity] Identity for the resource.
  /// [location] The location of the resource
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning state of this task run
  /// [runRequest] The request (parameters) for the run
  /// [runResult] The result of this task run
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetTaskRunResult({
    this.azureApiVersion,
    this.forceUpdateTag,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.runRequest,
    this.runResult,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'forceUpdateTag': ?forceUpdateTag,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'runRequest': ?runRequest,
      'runResult': ?runResult?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetTaskRunResult.fromMap(Map<String, dynamic> map) {
    return GetTaskRunResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runRequest: (() { final guardedValue = map['runRequest']; if (guardedValue == null) return null; return guardedValue; })(),
      runResult: (() { final guardedValue = map['runResult']; if (guardedValue == null) return null; return RunResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
