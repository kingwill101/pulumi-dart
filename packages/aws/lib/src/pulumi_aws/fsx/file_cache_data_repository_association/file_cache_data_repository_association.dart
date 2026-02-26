// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../file_cache_data_repository_association_nf/file_cache_data_repository_association_nf.dart';

class FileCacheDataRepositoryAssociation {
  final String? associationId;

  /// The path to the S3 or NFS data repository that links to the cache.
  final String dataRepositoryPath;

  /// A list of NFS Exports that will be linked with this data repository association. The Export paths are in the format /exportpath1. To use this parameter, you must configure DataRepositoryPath as the domain name of the NFS file system. The NFS file system domain name in effect is the root of the subdirectories. Note that DataRepositorySubdirectories is not supported for S3 data repositories. Max of 500.
  final List<String>? dataRepositorySubdirectories;

  /// The system-generated, unique ID of the cache.
  final String? fileCacheId;

  /// A path on the cache that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with DataRepositoryPath. The leading forward slash in the name is required. Two data repository associations cannot have overlapping cache paths. For example, if a data repository is associated with cache path /ns1/, then you cannot link another data repository with cache path /ns1/ns2. This path specifies where in your cache files will be exported from. This cache directory can be linked to only one data repository, and no data repository other can be linked to the directory. Note: The cache path can only be set to root (/) on an NFS DRA when DataRepositorySubdirectories is specified. If you specify root (/) as the cache path, you can create only one DRA on the cache. The cache path cannot be set to root (/) for an S3 DRA.
  final String fileCachePath;
  final String? fileSystemId;
  final String? fileSystemPath;
  final int? importedFileChunkSize;

  /// (Optional) See the <span pulumi-lang-nodejs="`nfs`" pulumi-lang-dotnet="`Nfs`" pulumi-lang-go="`nfs`" pulumi-lang-python="`nfs`" pulumi-lang-yaml="`nfs`" pulumi-lang-java="`nfs`">`nfs`</span> configuration block.
  final List<FileCacheDataRepositoryAssociationNf>? nfs;
  final String? resourceArn;

  /// A map of tags to assign to the file cache. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

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
    final map = <String, dynamic>{};
    final associationIdValue = associationId;
    if (associationIdValue != null) {
      map['associationId'] = associationIdValue;
    }
    map['dataRepositoryPath'] = dataRepositoryPath;
    final dataRepositorySubdirectoriesValue = dataRepositorySubdirectories;
    if (dataRepositorySubdirectoriesValue != null) {
      map['dataRepositorySubdirectories'] = dataRepositorySubdirectoriesValue;
    }
    final fileCacheIdValue = fileCacheId;
    if (fileCacheIdValue != null) {
      map['fileCacheId'] = fileCacheIdValue;
    }
    map['fileCachePath'] = fileCachePath;
    final fileSystemIdValue = fileSystemId;
    if (fileSystemIdValue != null) {
      map['fileSystemId'] = fileSystemIdValue;
    }
    final fileSystemPathValue = fileSystemPath;
    if (fileSystemPathValue != null) {
      map['fileSystemPath'] = fileSystemPathValue;
    }
    final importedFileChunkSizeValue = importedFileChunkSize;
    if (importedFileChunkSizeValue != null) {
      map['importedFileChunkSize'] = importedFileChunkSizeValue;
    }
    final nfsValue = nfs;
    if (nfsValue != null) {
      map['nfs'] = Input.encodeList<FileCacheDataRepositoryAssociationNf,
          Map<String, dynamic>>(nfsValue, (value) => value.toMap());
    }
    final resourceArnValue = resourceArn;
    if (resourceArnValue != null) {
      map['resourceArn'] = resourceArnValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FileCacheDataRepositoryAssociation.fromMap(Map<String, dynamic> map) {
    return FileCacheDataRepositoryAssociation(
      associationId:
          map['associationId'] == null ? null : map['associationId'] as String,
      dataRepositoryPath: map['dataRepositoryPath'] as String,
      dataRepositorySubdirectories: map['dataRepositorySubdirectories'] == null
          ? null
          : (map['dataRepositorySubdirectories'] as List).cast<String>(),
      fileCacheId:
          map['fileCacheId'] == null ? null : map['fileCacheId'] as String,
      fileCachePath: map['fileCachePath'] as String,
      fileSystemId:
          map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      fileSystemPath: map['fileSystemPath'] == null
          ? null
          : map['fileSystemPath'] as String,
      importedFileChunkSize: map['importedFileChunkSize'] == null
          ? null
          : map['importedFileChunkSize'] as int,
      nfs: map['nfs'] == null
          ? null
          : Input.decodeList<FileCacheDataRepositoryAssociationNf>(
              map['nfs'],
              (value) => FileCacheDataRepositoryAssociationNf.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceArn:
          map['resourceArn'] == null ? null : map['resourceArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
