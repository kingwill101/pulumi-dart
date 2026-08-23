// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_cache_data_repository_association_nf.dart';

class FileCacheDataRepositoryAssociation {
  /// System-generated, unique ID of the data repository association.
  final pulumi.Input<String>? associationId;
  /// Path to the S3 or NFS data repository that links to the cache.
  final pulumi.Input<String> dataRepositoryPath;
  /// NFS exports linked with this data repository association, in the format `/exportpath1`. Configure `dataRepositoryPath` as the domain name of the NFS file system to use this argument. Not supported for S3 data repositories. Maximum of 500.
  final pulumi.Input<List<String>>? dataRepositorySubdirectories;
  /// System-generated, unique ID of the cache.
  final pulumi.Input<String>? fileCacheId;
  /// Path on the cache that maps 1-1 with `dataRepositoryPath`. Must begin with a forward slash and cannot overlap the cache path of another data repository association.
  final pulumi.Input<String> fileCachePath;
  /// ID of the file system for an NFS data repository association.
  final pulumi.Input<String>? fileSystemId;
  /// Path to the data repository on the file system.
  final pulumi.Input<String>? fileSystemPath;
  /// Size, in mebibytes (MiB), of the data blocks used to represent imported files.
  final pulumi.Input<int>? importedFileChunkSize;
  /// Configuration for a data repository association linked to an NFS file system. See `nfs` Block below.
  final pulumi.Input<List<FileCacheDataRepositoryAssociationNf>>? nfs;
  /// Amazon Resource Name (ARN) of the data repository association.
  final pulumi.Input<String>? resourceArn;
  /// Map of tags to assign to the file cache. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FileCacheDataRepositoryAssociation].
  /// [associationId] System-generated, unique ID of the data repository association.
  /// [dataRepositoryPath] Path to the S3 or NFS data repository that links to the cache.
  /// [dataRepositorySubdirectories] NFS exports linked with this data repository association, in the format `/exportpath1`. Configure `dataRepositoryPath` as the domain name of the NFS file system to use this argument. Not supported for S3 data repositories. Maximum of 500.
  /// [fileCacheId] System-generated, unique ID of the cache.
  /// [fileCachePath] Path on the cache that maps 1-1 with `dataRepositoryPath`. Must begin with a forward slash and cannot overlap the cache path of another data repository association.
  /// [fileSystemId] ID of the file system for an NFS data repository association.
  /// [fileSystemPath] Path to the data repository on the file system.
  /// [importedFileChunkSize] Size, in mebibytes (MiB), of the data blocks used to represent imported files.
  /// [nfs] Configuration for a data repository association linked to an NFS file system. See `nfs` Block below.
  /// [resourceArn] Amazon Resource Name (ARN) of the data repository association.
  /// [tags] Map of tags to assign to the file cache. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const FileCacheDataRepositoryAssociation({
    this.associationId,
    required this.dataRepositoryPath,
    this.dataRepositorySubdirectories,
    this.fileCacheId,
    required this.fileCachePath,
    this.fileSystemId,
    this.fileSystemPath,
    this.importedFileChunkSize,
    this.nfs,
    this.resourceArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationId': ?associationId,
      'dataRepositoryPath': dataRepositoryPath,
      'dataRepositorySubdirectories': ?dataRepositorySubdirectories,
      'fileCacheId': ?fileCacheId,
      'fileCachePath': fileCachePath,
      'fileSystemId': ?fileSystemId,
      'fileSystemPath': ?fileSystemPath,
      'importedFileChunkSize': ?importedFileChunkSize,
      'nfs': ?pulumi.Input.mapOptionalInputValue<List<FileCacheDataRepositoryAssociationNf>, List<Map<String, dynamic>>>(nfs, (value) => pulumi.Input.encodeList<FileCacheDataRepositoryAssociationNf, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceArn': ?resourceArn,
      'tags': ?tags,
    };
  }

  factory FileCacheDataRepositoryAssociation.fromMap(Map<String, dynamic> map) {
    return FileCacheDataRepositoryAssociation(
      associationId: (() { final guardedValue = map['associationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataRepositoryPath: pulumi.Input.fromValue(map['dataRepositoryPath'] as String),
      dataRepositorySubdirectories: (() { final guardedValue = map['dataRepositorySubdirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileCacheId: (() { final guardedValue = map['fileCacheId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileCachePath: pulumi.Input.fromValue(map['fileCachePath'] as String),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemPath: (() { final guardedValue = map['fileSystemPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importedFileChunkSize: (() { final guardedValue = map['importedFileChunkSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nfs: (() { final guardedValue = map['nfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileCacheDataRepositoryAssociationNf>(guardedValue, (value) => FileCacheDataRepositoryAssociationNf.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
