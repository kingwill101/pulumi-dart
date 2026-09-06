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
  final String? id;
  /// Most recent modification time and date
  final String? modifiedTimeStamp;
  /// Resource name
  final String? name;
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
  final String? type;

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
  const GetCapacityPoolSubvolumeMetadataResult({
    this.accessedTimeStamp,
    this.bytesUsed,
    this.changedTimeStamp,
    this.creationTimeStamp,
    this.id,
    this.modifiedTimeStamp,
    this.name,
    this.parentPath,
    this.path,
    this.permissions,
    this.provisioningState,
    this.size,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessedTimeStamp': ?accessedTimeStamp,
      'bytesUsed': ?bytesUsed,
      'changedTimeStamp': ?changedTimeStamp,
      'creationTimeStamp': ?creationTimeStamp,
      'id': ?id,
      'modifiedTimeStamp': ?modifiedTimeStamp,
      'name': ?name,
      'parentPath': ?parentPath,
      'path': ?path,
      'permissions': ?permissions,
      'provisioningState': ?provisioningState,
      'size': ?size,
      'type': ?type,
    };
  }

  factory GetCapacityPoolSubvolumeMetadataResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolSubvolumeMetadataResult(
      accessedTimeStamp: (() { final guardedValue = map['accessedTimeStamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bytesUsed: (() { final guardedValue = map['bytesUsed']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      changedTimeStamp: (() { final guardedValue = map['changedTimeStamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimeStamp: (() { final guardedValue = map['creationTimeStamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedTimeStamp: (() { final guardedValue = map['modifiedTimeStamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentPath: (() { final guardedValue = map['parentPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
