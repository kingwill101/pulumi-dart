// ignore_for_file: unused_element, unnecessary_cast


/// Defines an Aml Instance DataMount.
class ComputeInstanceDataMountResponse {
  /// who this data mount created by.
  final String? createdBy;
  /// Error of this data mount.
  final String? error;
  /// Mount Action.
  final String? mountAction;
  /// name of the ComputeInstance data mount.
  final String? mountName;
  /// Path of this data mount.
  final String? mountPath;
  /// Mount state.
  final String? mountState;
  /// The time when the disk mounted.
  final String? mountedOn;
  /// Source of the ComputeInstance data mount.
  final String? source;
  /// Data source type.
  final String? sourceType;

  /// Creates a new [ComputeInstanceDataMountResponse].
  /// [createdBy] who this data mount created by.
  /// [error] Error of this data mount.
  /// [mountAction] Mount Action.
  /// [mountName] name of the ComputeInstance data mount.
  /// [mountPath] Path of this data mount.
  /// [mountState] Mount state.
  /// [mountedOn] The time when the disk mounted.
  /// [source] Source of the ComputeInstance data mount.
  /// [sourceType] Data source type.
  ComputeInstanceDataMountResponse({
    this.createdBy,
    this.error,
    this.mountAction,
    this.mountName,
    this.mountPath,
    this.mountState,
    this.mountedOn,
    this.source,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBy': ?createdBy,
      'error': ?error,
      'mountAction': ?mountAction,
      'mountName': ?mountName,
      'mountPath': ?mountPath,
      'mountState': ?mountState,
      'mountedOn': ?mountedOn,
      'source': ?source,
      'sourceType': ?sourceType,
    };
  }

  factory ComputeInstanceDataMountResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceDataMountResponse(
      createdBy: map['createdBy'] == null ? null : map['createdBy'] as String,
      error: map['error'] == null ? null : map['error'] as String,
      mountAction: map['mountAction'] == null ? null : map['mountAction'] as String,
      mountName: map['mountName'] == null ? null : map['mountName'] as String,
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      mountState: map['mountState'] == null ? null : map['mountState'] as String,
      mountedOn: map['mountedOn'] == null ? null : map['mountedOn'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceType: map['sourceType'] == null ? null : map['sourceType'] as String,
    );
  }
}

