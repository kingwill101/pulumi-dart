// ignore_for_file: unused_element, unnecessary_cast


class GetFilesetsFileset {
  /// The time when Fileset was created.
  final String createTime;
  /// Description of Fileset.
  final String description;
  /// The ID of the file system.
  final String fileSystemId;
  /// The path of Fileset.
  final String fileSystemPath;
  /// The first ID of the resource.
  final String filesetId;
  /// The ID of the Fileset.
  final String id;
  /// The status of the fileset.
  final String status;
  /// The latest update time of Fileset.
  final String updateTime;

  /// Creates a new [GetFilesetsFileset].
  /// [createTime] The time when Fileset was created.
  /// [description] Description of Fileset.
  /// [fileSystemId] The ID of the file system.
  /// [fileSystemPath] The path of Fileset.
  /// [filesetId] The first ID of the resource.
  /// [id] The ID of the Fileset.
  /// [status] The status of the fileset.
  /// [updateTime] The latest update time of Fileset.
  GetFilesetsFileset({
    required this.createTime,
    required this.description,
    required this.fileSystemId,
    required this.fileSystemPath,
    required this.filesetId,
    required this.id,
    required this.status,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'fileSystemId': fileSystemId,
      'fileSystemPath': fileSystemPath,
      'filesetId': filesetId,
      'id': id,
      'status': status,
      'updateTime': updateTime,
    };
  }

  factory GetFilesetsFileset.fromMap(Map<String, dynamic> map) {
    return GetFilesetsFileset(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      fileSystemId: map['fileSystemId'] as String,
      fileSystemPath: map['fileSystemPath'] as String,
      filesetId: map['filesetId'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

