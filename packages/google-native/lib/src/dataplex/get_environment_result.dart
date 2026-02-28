// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_environment_endpoints_response.dart';
import 'google_cloud_dataplex_v1_environment_infrastructure_spec_response.dart';
import 'google_cloud_dataplex_v1_environment_session_spec_response.dart';
import 'google_cloud_dataplex_v1_environment_session_status_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// Environment creation time.
  final String createTime;

  /// Optional. Description of the environment.
  final String description;

  /// Optional. User friendly display name.
  final String displayName;

  /// URI Endpoints to access sessions associated with the Environment.
  final GoogleCloudDataplexV1EnvironmentEndpointsResponse endpoints;

  /// Infrastructure specification for the Environment.
  final GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse
      infrastructureSpec;

  /// Optional. User defined labels for the environment.
  final Map<String, String> labels;

  /// The relative resource name of the environment, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}
  final String name;

  /// Optional. Configuration for sessions created for this environment.
  final GoogleCloudDataplexV1EnvironmentSessionSpecResponse sessionSpec;

  /// Status of sessions created for this environment.
  final GoogleCloudDataplexV1EnvironmentSessionStatusResponse sessionStatus;

  /// Current state of the environment.
  final String state;

  /// System generated globally unique ID for the environment. This ID will be different if the environment is deleted and re-created with the same name.
  final String uid;

  /// The time when the environment was last updated.
  final String updateTime;

  /// Creates a new [GetEnvironmentResult].
  /// [createTime] Environment creation time.
  /// [description] Optional. Description of the environment.
  /// [displayName] Optional. User friendly display name.
  /// [endpoints] URI Endpoints to access sessions associated with the Environment.
  /// [infrastructureSpec] Infrastructure specification for the Environment.
  /// [labels] Optional. User defined labels for the environment.
  /// [name] The relative resource name of the environment, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}
  /// [sessionSpec] Optional. Configuration for sessions created for this environment.
  /// [sessionStatus] Status of sessions created for this environment.
  /// [state] Current state of the environment.
  /// [uid] System generated globally unique ID for the environment. This ID will be different if the environment is deleted and re-created with the same name.
  /// [updateTime] The time when the environment was last updated.
  GetEnvironmentResult({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.endpoints,
    required this.infrastructureSpec,
    required this.labels,
    required this.name,
    required this.sessionSpec,
    required this.sessionStatus,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['endpoints'] = endpoints.toMap();
    map['infrastructureSpec'] = infrastructureSpec.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['sessionSpec'] = sessionSpec.toMap();
    map['sessionStatus'] = sessionStatus.toMap();
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      endpoints: GoogleCloudDataplexV1EnvironmentEndpointsResponse.fromMap(
          (map['endpoints'] as Map).cast<String, dynamic>()),
      infrastructureSpec:
          GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse.fromMap(
              (map['infrastructureSpec'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      sessionSpec: GoogleCloudDataplexV1EnvironmentSessionSpecResponse.fromMap(
          (map['sessionSpec'] as Map).cast<String, dynamic>()),
      sessionStatus:
          GoogleCloudDataplexV1EnvironmentSessionStatusResponse.fromMap(
              (map['sessionStatus'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
