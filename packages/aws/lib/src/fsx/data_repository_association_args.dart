// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_repository_association_s3.dart';

/// {@template pulumi_fsx_data_repository_association_data_repository_association_args_doc}
/// The set of arguments for DataRepositoryAssociation.
/// {@endtemplate}
/// {@macro pulumi_fsx_data_repository_association_data_repository_association_args_doc}
class DataRepositoryAssociationArgs {
  /// Set to true to run an import data repository task to import metadata from the data repository to the file system after the data repository association is created. Defaults to `false`.
  final pulumi.Input<bool>? batchImportMetaDataOnCreate;

  /// The path to the Amazon S3 data repository that will be linked to the file system. The path must be an S3 bucket s3://myBucket/myPrefix/. This path specifies where in the S3 data repository files will be imported from or exported to. The same S3 bucket cannot be linked more than once to the same file system.
  final pulumi.Input<String> dataRepositoryPath;

  /// Set to true to delete files from the file system upon deleting this data repository association. Defaults to `false`.
  final pulumi.Input<bool>? deleteDataInFilesystem;

  /// The ID of the Amazon FSx file system to on which to create a data repository association.
  final pulumi.Input<String> fileSystemId;

  /// A path on the file system that points to a high-level directory (such as `/ns1/`) or subdirectory (such as `/ns1/subdir/`) that will be mapped 1-1 with `data_repository_path`. The leading forward slash in the name is required. Two data repository associations cannot have overlapping file system paths. For example, if a data repository is associated with file system path `/ns1/`, then you cannot link another data repository with file system path `/ns1/ns2`. This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory.
  final pulumi.Input<String> fileSystemPath;

  /// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system.
  final pulumi.Input<int>? importedFileChunkSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// See the `s3` configuration block. Max of 1.
  /// The configuration for an Amazon S3 data repository linked to an Amazon FSx Lustre file system with a data repository association. The configuration defines which file events (new, changed, or deleted files or directories) are automatically imported from the linked data repository to the file system or automatically exported from the file system to the data repository.
  final pulumi.Input<DataRepositoryAssociationS3>? s3;

  /// A map of tags to assign to the data repository association. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataRepositoryAssociationArgs].
  /// [batchImportMetaDataOnCreate] Set to true to run an import data repository task to import metadata from the data repository to the file system after the data repository association is created. Defaults to `false`.
  /// [dataRepositoryPath] The path to the Amazon S3 data repository that will be linked to the file system. The path must be an S3 bucket s3://myBucket/myPrefix/. This path specifies where in the S3 data repository files will be imported from or exported to. The same S3 bucket cannot be linked more than once to the same file system.
  /// [deleteDataInFilesystem] Set to true to delete files from the file system upon deleting this data repository association. Defaults to `false`.
  /// [fileSystemId] The ID of the Amazon FSx file system to on which to create a data repository association.
  /// [fileSystemPath] A path on the file system that points to a high-level directory (such as `/ns1/`) or subdirectory (such as `/ns1/subdir/`) that will be mapped 1-1 with `data_repository_path`. The leading forward slash in the name is required. Two data repository associations cannot have overlapping file system paths. For example, if a data repository is associated with file system path `/ns1/`, then you cannot link another data repository with file system path `/ns1/ns2`. This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory.
  /// [importedFileChunkSize] For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3] See the `s3` configuration block. Max of 1.
  /// [tags] A map of tags to assign to the data repository association. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DataRepositoryAssociationArgs({
    bool? batchImportMetaDataOnCreate,
    required String dataRepositoryPath,
    bool? deleteDataInFilesystem,
    required String fileSystemId,
    required String fileSystemPath,
    int? importedFileChunkSize,
    String? region,
    DataRepositoryAssociationS3? s3,
    Map<String, String>? tags,
  })  : batchImportMetaDataOnCreate =
            pulumi.Input.asOptionalInput<bool>(batchImportMetaDataOnCreate),
        dataRepositoryPath = pulumi.Input.asInput<String>(dataRepositoryPath),
        deleteDataInFilesystem =
            pulumi.Input.asOptionalInput<bool>(deleteDataInFilesystem),
        fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
        fileSystemPath = pulumi.Input.asInput<String>(fileSystemPath),
        importedFileChunkSize =
            pulumi.Input.asOptionalInput<int>(importedFileChunkSize),
        region = pulumi.Input.asOptionalInput<String>(region),
        s3 = pulumi.Input.asOptionalInput<DataRepositoryAssociationS3>(s3),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      map['s3'] = pulumi.Input.mapOptionalInputValue<
          DataRepositoryAssociationS3,
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
      batchImportMetaDataOnCreate: map['batchImportMetaDataOnCreate'] == null
          ? null
          : map['batchImportMetaDataOnCreate'] as bool,
      dataRepositoryPath: map['dataRepositoryPath'] as String,
      deleteDataInFilesystem: map['deleteDataInFilesystem'] == null
          ? null
          : map['deleteDataInFilesystem'] as bool,
      fileSystemId: map['fileSystemId'] as String,
      fileSystemPath: map['fileSystemPath'] as String,
      importedFileChunkSize: map['importedFileChunkSize'] == null
          ? null
          : map['importedFileChunkSize'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      s3: map['s3'] == null
          ? null
          : DataRepositoryAssociationS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
