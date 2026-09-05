// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_repository_association_s3.dart';

/// Input properties used for looking up and filtering DataRepositoryAssociation resources.
class DataRepositoryAssociationState {
  /// ARN of the file system.
  final pulumi.Input<String?>? arn;
  /// Identifier of the data repository association.
  final pulumi.Input<String?>? associationId;
  /// Set to true to run an import data repository task to import metadata from the data repository to the file system after the data repository association is created. Defaults to `false`.
  final pulumi.Input<bool?>? batchImportMetaDataOnCreate;
  /// Path to the Amazon S3 data repository that will be linked to the file system. The path must be an S3 bucket s3://myBucket/myPrefix/. This path specifies where in the S3 data repository files will be imported from or exported to. The same S3 bucket cannot be linked more than once to the same file system.
  final pulumi.Input<String?>? dataRepositoryPath;
  /// Set to true to delete files from the file system upon deleting this data repository association. Defaults to `false`.
  final pulumi.Input<bool?>? deleteDataInFilesystem;
  /// ID of the Amazon FSx file system to on which to create a data repository association.
  final pulumi.Input<String?>? fileSystemId;
  /// Path on the file system that points to a high-level directory (such as `/ns1/`) or subdirectory (such as `/ns1/subdir/`) that will be mapped 1-1 with `dataRepositoryPath`. The leading forward slash in the name is required. Two data repository associations cannot have overlapping file system paths. For example, if a data repository is associated with file system path `/ns1/`, then you cannot link another data repository with file system path `/ns1/ns2`. This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory.
  final pulumi.Input<String?>? fileSystemPath;
  /// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system.
  final pulumi.Input<int?>? importedFileChunkSize;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration for an Amazon S3 data repository linked to an Amazon FSx Lustre file system with a data repository association. This configuration defines which file events (new, changed, or deleted files or directories) are automatically imported from the linked data repository to the file system or automatically exported from the file system to the data repository. See the `s3` Block below. Max of 1.
  final pulumi.Input<DataRepositoryAssociationS3?>? s3;
  /// Map of tags to assign to the data repository association. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [DataRepositoryAssociationState].
  /// [arn] ARN of the file system.
  /// [associationId] Identifier of the data repository association.
  /// [batchImportMetaDataOnCreate] Set to true to run an import data repository task to import metadata from the data repository to the file system after the data repository association is created. Defaults to `false`.
  /// [dataRepositoryPath] Path to the Amazon S3 data repository that will be linked to the file system. The path must be an S3 bucket s3://myBucket/myPrefix/. This path specifies where in the S3 data repository files will be imported from or exported to. The same S3 bucket cannot be linked more than once to the same file system.
  /// [deleteDataInFilesystem] Set to true to delete files from the file system upon deleting this data repository association. Defaults to `false`.
  /// [fileSystemId] ID of the Amazon FSx file system to on which to create a data repository association.
  /// [fileSystemPath] Path on the file system that points to a high-level directory (such as `/ns1/`) or subdirectory (such as `/ns1/subdir/`) that will be mapped 1-1 with `dataRepositoryPath`. The leading forward slash in the name is required. Two data repository associations cannot have overlapping file system paths. For example, if a data repository is associated with file system path `/ns1/`, then you cannot link another data repository with file system path `/ns1/ns2`. This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory.
  /// [importedFileChunkSize] For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3] Configuration for an Amazon S3 data repository linked to an Amazon FSx Lustre file system with a data repository association. This configuration defines which file events (new, changed, or deleted files or directories) are automatically imported from the linked data repository to the file system or automatically exported from the file system to the data repository. See the `s3` Block below. Max of 1.
  /// [tags] Map of tags to assign to the data repository association. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const DataRepositoryAssociationState({
    this.arn,
    this.associationId,
    this.batchImportMetaDataOnCreate,
    this.dataRepositoryPath,
    this.deleteDataInFilesystem,
    this.fileSystemId,
    this.fileSystemPath,
    this.importedFileChunkSize,
    this.region,
    this.s3,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associationId': ?associationId,
      'batchImportMetaDataOnCreate': ?batchImportMetaDataOnCreate,
      'dataRepositoryPath': ?dataRepositoryPath,
      'deleteDataInFilesystem': ?deleteDataInFilesystem,
      'fileSystemId': ?fileSystemId,
      'fileSystemPath': ?fileSystemPath,
      'importedFileChunkSize': ?importedFileChunkSize,
      'region': ?region,
      's3': ?pulumi.Input.mapOptionalInputValue<DataRepositoryAssociationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DataRepositoryAssociationState.fromMap(Map<String, dynamic> map) {
    return DataRepositoryAssociationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associationId: (() { final guardedValue = map['associationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      batchImportMetaDataOnCreate: (() { final guardedValue = map['batchImportMetaDataOnCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataRepositoryPath: (() { final guardedValue = map['dataRepositoryPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteDataInFilesystem: (() { final guardedValue = map['deleteDataInFilesystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemPath: (() { final guardedValue = map['fileSystemPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importedFileChunkSize: (() { final guardedValue = map['importedFileChunkSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataRepositoryAssociationS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
