// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_repository_association_s3/data_repository_association_s3.dart';

/// The set of arguments for DataRepositoryAssociation.
class DataRepositoryAssociationArgs {
  /// Set to true to run an import data repository task to import metadata from the data repository to the file system after the data repository association is created. Defaults to `false`.
  final Input<bool>? batchImportMetaDataOnCreate;

  /// The path to the Amazon S3 data repository that will be linked to the file system. The path must be an S3 bucket s3://myBucket/myPrefix/. This path specifies where in the S3 data repository files will be imported from or exported to. The same S3 bucket cannot be linked more than once to the same file system.
  final Input<String> dataRepositoryPath;

  /// Set to true to delete files from the file system upon deleting this data repository association. Defaults to `false`.
  final Input<bool>? deleteDataInFilesystem;

  /// The ID of the Amazon FSx file system to on which to create a data repository association.
  final Input<String> fileSystemId;

  /// A path on the file system that points to a high-level directory (such as `/ns1/`) or subdirectory (such as `/ns1/subdir/`) that will be mapped 1-1 with `data_repository_path`. The leading forward slash in the name is required. Two data repository associations cannot have overlapping file system paths. For example, if a data repository is associated with file system path `/ns1/`, then you cannot link another data repository with file system path `/ns1/ns2`. This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory.
  final Input<String> fileSystemPath;

  /// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system.
  final Input<int>? importedFileChunkSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// See the `s3` configuration block. Max of 1.
  /// The configuration for an Amazon S3 data repository linked to an Amazon FSx Lustre file system with a data repository association. The configuration defines which file events (new, changed, or deleted files or directories) are automatically imported from the linked data repository to the file system or automatically exported from the file system to the data repository.
  final Input<DataRepositoryAssociationS3>? s3;

  /// A map of tags to assign to the data repository association. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DataRepositoryAssociationArgs({
    this.batchImportMetaDataOnCreate,
    required this.dataRepositoryPath,
    this.deleteDataInFilesystem,
    required this.fileSystemId,
    required this.fileSystemPath,
    this.importedFileChunkSize,
    this.region,
    this.s3,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchImportMetaDataOnCreateValue = batchImportMetaDataOnCreate;
    if (batchImportMetaDataOnCreateValue != null) {
      map['batchImportMetaDataOnCreate'] = batchImportMetaDataOnCreateValue;
    }
    map['dataRepositoryPath'] = dataRepositoryPath;
    final deleteDataInFilesystemValue = deleteDataInFilesystem;
    if (deleteDataInFilesystemValue != null) {
      map['deleteDataInFilesystem'] = deleteDataInFilesystemValue;
    }
    map['fileSystemId'] = fileSystemId;
    map['fileSystemPath'] = fileSystemPath;
    final importedFileChunkSizeValue = importedFileChunkSize;
    if (importedFileChunkSizeValue != null) {
      map['importedFileChunkSize'] = importedFileChunkSizeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = Input.mapOptionalInputValue<DataRepositoryAssociationS3,
          Map<String, dynamic>>(s3Value, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DataRepositoryAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DataRepositoryAssociationArgs(
      batchImportMetaDataOnCreate:
          Input.asOptionalInput<bool>(map['batchImportMetaDataOnCreate']),
      dataRepositoryPath: Input.asInput<String>(map['dataRepositoryPath']),
      deleteDataInFilesystem:
          Input.asOptionalInput<bool>(map['deleteDataInFilesystem']),
      fileSystemId: Input.asInput<String>(map['fileSystemId']),
      fileSystemPath: Input.asInput<String>(map['fileSystemPath']),
      importedFileChunkSize:
          Input.asOptionalInput<int>(map['importedFileChunkSize']),
      region: Input.asOptionalInput<String>(map['region']),
      s3: Input.asOptionalInput<DataRepositoryAssociationS3>(map['s3']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
