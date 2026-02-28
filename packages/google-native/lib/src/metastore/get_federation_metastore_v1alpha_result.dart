// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFederation.
class GetFederationMetastoreV1alphaResult {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  final Map<String, String> backendMetastores;

  /// The time when the metastore federation was created.
  final String createTime;

  /// The federation endpoint.
  final String endpointUri;

  /// User-defined labels for the metastore federation.
  final Map<String, String> labels;

  /// Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
  final String name;

  /// The current state of the federation.
  final String state;

  /// Additional information about the current state of the metastore federation, if available.
  final String stateMessage;

  /// The globally unique resource identifier of the metastore federation.
  final String uid;

  /// The time when the metastore federation was last updated.
  final String updateTime;

  /// Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  final String version;

  /// Creates a new [GetFederationMetastoreV1alphaResult].
  /// [backendMetastores] A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// [createTime] The time when the metastore federation was created.
  /// [endpointUri] The federation endpoint.
  /// [labels] User-defined labels for the metastore federation.
  /// [name] Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
  /// [state] The current state of the federation.
  /// [stateMessage] Additional information about the current state of the metastore federation, if available.
  /// [uid] The globally unique resource identifier of the metastore federation.
  /// [updateTime] The time when the metastore federation was last updated.
  /// [version] Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  GetFederationMetastoreV1alphaResult({
    required this.backendMetastores,
    required this.createTime,
    required this.endpointUri,
    required this.labels,
    required this.name,
    required this.state,
    required this.stateMessage,
    required this.uid,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendMetastores'] = backendMetastores;
    map['createTime'] = createTime;
    map['endpointUri'] = endpointUri;
    map['labels'] = labels;
    map['name'] = name;
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['version'] = version;
    return map;
  }

  factory GetFederationMetastoreV1alphaResult.fromMap(
      Map<String, dynamic> map) {
    return GetFederationMetastoreV1alphaResult(
      backendMetastores:
          (map['backendMetastores'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      endpointUri: map['endpointUri'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      version: map['version'] as String,
    );
  }
}
