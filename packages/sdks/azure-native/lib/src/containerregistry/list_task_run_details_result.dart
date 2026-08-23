// ignore_for_file: unused_element, unnecessary_cast

import 'docker_build_request_response.dart';
import 'identity_properties_response.dart';
import 'run_response.dart';
import 'system_data_response.dart';

/// Result data returned by listTaskRunDetails.
class ListTaskRunDetailsResult {
  /// How the run should be forced to rerun even if the run request configuration has not changed
  final String? forceUpdateTag;
  /// The resource ID.
  final String id;
  /// Identity for the resource.
  final IdentityPropertiesResponse? identity;
  /// The location of the resource
  final String? location;
  /// The name of the resource.
  final String name;
  /// The provisioning state of this task run
  final String provisioningState;
  /// The request (parameters) for the run
  final DockerBuildRequestResponse? runRequest;
  /// The result of this task run
  final RunResponse runResult;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [ListTaskRunDetailsResult].
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
  const ListTaskRunDetailsResult({
    this.forceUpdateTag,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.provisioningState,
    this.runRequest,
    required this.runResult,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceUpdateTag': ?forceUpdateTag,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'runRequest': ?runRequest?.toMap(),
      'runResult': runResult.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory ListTaskRunDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListTaskRunDetailsResult(
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      runRequest: (() { final guardedValue = map['runRequest']; if (guardedValue == null) return null; return DockerBuildRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      runResult: RunResponse.fromMap((map['runResult']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
