// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCapacityPoolSubvolumeMetadata.
class GetCapacityPoolSubvolumeMetadataResult {
  /// Most recent access time and date
  final String? accessedTimeStamp;
  /// Bytes used
  final double? bytesUsed;
  /// Most recent change time and date
  final String? changedTimeStamp;
  /// Creation time and date
  final String? creationTimeStamp;
  /// Resource Id
  final String id;
  /// Most recent modification time and date
  final String? modifiedTimeStamp;
  /// Resource name
  final String name;
  /// Path to the parent subvolume
  final String? parentPath;
  /// Path to the subvolume
  final String? path;
  /// Permissions of the subvolume
  final String? permissions;
  /// Azure lifecycle management
  final String? provisioningState;
  /// Size of subvolume
  final double? size;
  /// Resource type
  final String type;

  /// Creates a new [GetCapacityPoolSubvolumeMetadataResult].
  /// [accessedTimeStamp] Most recent access time and date
  /// [bytesUsed] Bytes used
  /// [changedTimeStamp] Most recent change time and date
  /// [creationTimeStamp] Creation time and date
  /// [id] Resource Id
  /// [modifiedTimeStamp] Most recent modification time and date
  /// [name] Resource name
  /// [parentPath] Path to the parent subvolume
  /// [path] Path to the subvolume
  /// [permissions] Permissions of the subvolume
  /// [provisioningState] Azure lifecycle management
  /// [size] Size of subvolume
  /// [type] Resource type
  GetCapacityPoolSubvolumeMetadataResult({
    this.accessedTimeStamp,
    this.bytesUsed,
    this.changedTimeStamp,
    this.creationTimeStamp,
    required this.id,
    this.modifiedTimeStamp,
    required this.name,
    this.parentPath,
    this.path,
    this.permissions,
    this.provisioningState,
    this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessedTimeStamp': ?accessedTimeStamp,
      'bytesUsed': ?bytesUsed,
      'changedTimeStamp': ?changedTimeStamp,
      'creationTimeStamp': ?creationTimeStamp,
      'id': id,
      'modifiedTimeStamp': ?modifiedTimeStamp,
      'name': name,
      'parentPath': ?parentPath,
      'path': ?path,
      'permissions': ?permissions,
      'provisioningState': ?provisioningState,
      'size': ?size,
      'type': type,
    };
  }

  factory GetCapacityPoolSubvolumeMetadataResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolSubvolumeMetadataResult(
      accessedTimeStamp: map['accessedTimeStamp'] == null ? null : map['accessedTimeStamp'] as String,
      bytesUsed: map['bytesUsed'] == null ? null : map['bytesUsed'] as double,
      changedTimeStamp: map['changedTimeStamp'] == null ? null : map['changedTimeStamp'] as String,
      creationTimeStamp: map['creationTimeStamp'] == null ? null : map['creationTimeStamp'] as String,
      id: map['id'] as String,
      modifiedTimeStamp: map['modifiedTimeStamp'] == null ? null : map['modifiedTimeStamp'] as String,
      name: map['name'] as String,
      parentPath: map['parentPath'] == null ? null : map['parentPath'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      permissions: map['permissions'] == null ? null : map['permissions'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      size: map['size'] == null ? null : map['size'] as double,
      type: map['type'] as String,
    );
  }
}

