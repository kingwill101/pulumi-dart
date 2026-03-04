// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFilesetsFileset {
  /// The time when Fileset was created.
  final pulumi.Input<String> createTime;

  /// Description of Fileset.
  final pulumi.Input<String> description;

  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;

  /// The path of Fileset.
  final pulumi.Input<String> fileSystemPath;

  /// The first ID of the resource.
  final pulumi.Input<String> filesetId;

  /// The ID of the Fileset.
  final pulumi.Input<String> id;

  /// The status of the fileset.
  final pulumi.Input<String> status;

  /// The latest update time of Fileset.
  final pulumi.Input<String> updateTime;

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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      fileSystemPath: pulumi.Input.fromValue(map['fileSystemPath'] as String),
      filesetId: pulumi.Input.fromValue(map['filesetId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
