// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_cache_data_repository_association_nf.dart';

class FileCacheDataRepositoryAssociation {
  final pulumi.Input<String>? associationId;
  /// The path to the S3 or NFS data repository that links to the cache.
  final pulumi.Input<String> dataRepositoryPath;
  /// A list of NFS Exports that will be linked with this data repository association. The Export paths are in the format /exportpath1. To use this parameter, you must configure DataRepositoryPath as the domain name of the NFS file system. The NFS file system domain name in effect is the root of the subdirectories. Note that DataRepositorySubdirectories is not supported for S3 data repositories. Max of 500.
  final pulumi.Input<List<String>>? dataRepositorySubdirectories;
  /// The system-generated, unique ID of the cache.
  final pulumi.Input<String>? fileCacheId;
  /// A path on the cache that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with DataRepositoryPath. The leading forward slash in the name is required. Two data repository associations cannot have overlapping cache paths. For example, if a data repository is associated with cache path /ns1/, then you cannot link another data repository with cache path /ns1/ns2. This path specifies where in your cache files will be exported from. This cache directory can be linked to only one data repository, and no data repository other can be linked to the directory. Note: The cache path can only be set to root (/) on an NFS DRA when DataRepositorySubdirectories is specified. If you specify root (/) as the cache path, you can create only one DRA on the cache. The cache path cannot be set to root (/) for an S3 DRA.
  final pulumi.Input<String> fileCachePath;
  final pulumi.Input<String>? fileSystemId;
  final pulumi.Input<String>? fileSystemPath;
  final pulumi.Input<int>? importedFileChunkSize;
  /// (Optional) See the `nfs` configuration block.
  final pulumi.Input<List<FileCacheDataRepositoryAssociationNf>>? nfs;
  final pulumi.Input<String>? resourceArn;
  /// A map of tags to assign to the file cache. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FileCacheDataRepositoryAssociation].
  /// [associationId] Optional.
  /// [dataRepositoryPath] The path to the S3 or NFS data repository that links to the cache.
  /// [dataRepositorySubdirectories] A list of NFS Exports that will be linked with this data repository association. The Export paths are in the format /exportpath1. To use this parameter, you must configure DataRepositoryPath as the domain name of the NFS file system. The NFS file system domain name in effect is the root of the subdirectories. Note that DataRepositorySubdirectories is not supported for S3 data repositories. Max of 500.
  /// [fileCacheId] The system-generated, unique ID of the cache.
  /// [fileCachePath] A path on the cache that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with DataRepositoryPath. The leading forward slash in the name is required. Two data repository associations cannot have overlapping cache paths. For example, if a data repository is associated with cache path /ns1/, then you cannot link another data repository with cache path /ns1/ns2. This path specifies where in your cache files will be exported from. This cache directory can be linked to only one data repository, and no data repository other can be linked to the directory. Note: The cache path can only be set to root (/) on an NFS DRA when DataRepositorySubdirectories is specified. If you specify root (/) as the cache path, you can create only one DRA on the cache. The cache path cannot be set to root (/) for an S3 DRA.
  /// [fileSystemId] Optional.
  /// [fileSystemPath] Optional.
  /// [importedFileChunkSize] Optional.
  /// [nfs] (Optional) See the `nfs` configuration block.
  /// [resourceArn] Optional.
  /// [tags] A map of tags to assign to the file cache. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  FileCacheDataRepositoryAssociation({
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

