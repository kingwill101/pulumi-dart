// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkstation.
class GetWorkstationWorkstationsV1betaResult {
  /// Optional. Client-specified annotations.
  final Map<String, String> annotations;
  /// Time when this workstation was created.
  final String createTime;
  /// Time when this workstation was soft-deleted.
  final String deleteTime;
  /// Optional. Human-readable name for this workstation.
  final String displayName;
  /// Optional. Environment variables passed to the workstation container's entrypoint.
  final Map<String, String> env;
  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final String etag;
  /// Host to which clients can send HTTPS traffic that will be received by the workstation. Authorized traffic will be received to the workstation as HTTP on port 80. To send traffic to a different port, clients may prefix the host with the destination port in the format `{port}-{host}`.
  final String host;
  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  final Map<String, String> labels;
  /// Identifier. Full name of this workstation.
  final String name;
  /// Indicates whether this workstation is currently being updated to match its intended state.
  final bool reconciling;
  /// Time when this workstation was most recently successfully started, regardless of the workstation's initial state.
  final String startTime;
  /// Current state of the workstation.
  final String state;
  /// A system-assigned unique identifier for this workstation.
  final String uid;
  /// Time when this workstation was most recently updated.
  final String updateTime;

  /// Creates a new [GetWorkstationWorkstationsV1betaResult].
  /// [annotations] Optional. Client-specified annotations.
  /// [createTime] Time when this workstation was created.
  /// [deleteTime] Time when this workstation was soft-deleted.
  /// [displayName] Optional. Human-readable name for this workstation.
  /// [env] Optional. Environment variables passed to the workstation container's entrypoint.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [host] Host to which clients can send HTTPS traffic that will be received by the workstation. Authorized traffic will be received to the workstation as HTTP on port 80. To send traffic to a different port, clients may prefix the host with the destination port in the format `{port}-{host}`.
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  /// [name] Identifier. Full name of this workstation.
  /// [reconciling] Indicates whether this workstation is currently being updated to match its intended state.
  /// [startTime] Time when this workstation was most recently successfully started, regardless of the workstation's initial state.
  /// [state] Current state of the workstation.
  /// [uid] A system-assigned unique identifier for this workstation.
  /// [updateTime] Time when this workstation was most recently updated.
  GetWorkstationWorkstationsV1betaResult({
    required this.annotations,
    required this.createTime,
    required this.deleteTime,
    required this.displayName,
    required this.env,
    required this.etag,
    required this.host,
    required this.labels,
    required this.name,
    required this.reconciling,
    required this.startTime,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'deleteTime': deleteTime,
      'displayName': displayName,
      'env': env,
      'etag': etag,
      'host': host,
      'labels': labels,
      'name': name,
      'reconciling': reconciling,
      'startTime': startTime,
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetWorkstationWorkstationsV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetWorkstationWorkstationsV1betaResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      env: (map['env'] as Map).cast<String, String>(),
      etag: map['etag'] as String,
      host: map['host'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      reconciling: map['reconciling'] as bool,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

