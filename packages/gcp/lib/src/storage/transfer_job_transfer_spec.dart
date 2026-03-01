// ignore_for_file: unused_element, unnecessary_cast

import 'transfer_job_transfer_spec_aws_s3_compatible_data_source.dart';
import 'transfer_job_transfer_spec_aws_s3_data_source.dart';
import 'transfer_job_transfer_spec_azure_blob_storage_data_source.dart';
import 'transfer_job_transfer_spec_gcs_data_sink.dart';
import 'transfer_job_transfer_spec_gcs_data_source.dart';
import 'transfer_job_transfer_spec_hdfs_data_source.dart';
import 'transfer_job_transfer_spec_http_data_source.dart';
import 'transfer_job_transfer_spec_object_conditions.dart';
import 'transfer_job_transfer_spec_posix_data_sink.dart';
import 'transfer_job_transfer_spec_posix_data_source.dart';
import 'transfer_job_transfer_spec_transfer_manifest.dart';
import 'transfer_job_transfer_spec_transfer_options.dart';

class TransferJobTransferSpec {
  /// An AWS S3 Compatible data source. Structure documented below.
  final TransferJobTransferSpecAwsS3CompatibleDataSource?
  awsS3CompatibleDataSource;

  /// An AWS S3 data source. Structure documented below.
  final TransferJobTransferSpecAwsS3DataSource? awsS3DataSource;

  /// An Azure Blob Storage data source. Structure documented below.
  final TransferJobTransferSpecAzureBlobStorageDataSource?
  azureBlobStorageDataSource;

  /// A Google Cloud Storage data sink. Structure documented below.
  final TransferJobTransferSpecGcsDataSink? gcsDataSink;

  /// A Google Cloud Storage data source. Structure documented below.
  final TransferJobTransferSpecGcsDataSource? gcsDataSource;

  /// An HDFS data source. Structure documented below.
  final TransferJobTransferSpecHdfsDataSource? hdfsDataSource;

  /// A HTTP URL data source. Structure documented below.
  final TransferJobTransferSpecHttpDataSource? httpDataSource;

  /// Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' `last_modification_time` do not exclude objects in a data sink. Structure documented below.
  final TransferJobTransferSpecObjectConditions? objectConditions;

  /// A POSIX data sink. Structure documented below.
  final TransferJobTransferSpecPosixDataSink? posixDataSink;

  /// A POSIX filesystem data source. Structure documented below.
  final TransferJobTransferSpecPosixDataSource? posixDataSource;

  /// Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
  final String? sinkAgentPoolName;

  /// Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
  final String? sourceAgentPoolName;

  /// Use a manifest file to limit which object are transferred. See [Storage Transfer Service manifest file format](https://cloud.google.com/storage-transfer/docs/manifest). Structure documented below.
  final TransferJobTransferSpecTransferManifest? transferManifest;

  /// Characteristics of how to treat files from datasource and sink during job. If the option `delete_objects_unique_in_sink` is true, object conditions based on objects' `last_modification_time` are ignored and do not exclude objects in a data source or a data sink. Structure documented below.
  final TransferJobTransferSpecTransferOptions? transferOptions;

  /// Creates a new [TransferJobTransferSpec].
  /// [awsS3CompatibleDataSource] An AWS S3 Compatible data source. Structure documented below.
  /// [awsS3DataSource] An AWS S3 data source. Structure documented below.
  /// [azureBlobStorageDataSource] An Azure Blob Storage data source. Structure documented below.
  /// [gcsDataSink] A Google Cloud Storage data sink. Structure documented below.
  /// [gcsDataSource] A Google Cloud Storage data source. Structure documented below.
  /// [hdfsDataSource] An HDFS data source. Structure documented below.
  /// [httpDataSource] A HTTP URL data source. Structure documented below.
  /// [objectConditions] Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' `last_modification_time` do not exclude objects in a data sink. Structure documented below.
  /// [posixDataSink] A POSIX data sink. Structure documented below.
  /// [posixDataSource] A POSIX filesystem data source. Structure documented below.
  /// [sinkAgentPoolName] Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
  /// [sourceAgentPoolName] Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
  /// [transferManifest] Use a manifest file to limit which object are transferred. See [Storage Transfer Service manifest file format](https://cloud.google.com/storage-transfer/docs/manifest). Structure documented below.
  /// [transferOptions] Characteristics of how to treat files from datasource and sink during job. If the option `delete_objects_unique_in_sink` is true, object conditions based on objects' `last_modification_time` are ignored and do not exclude objects in a data source or a data sink. Structure documented below.
  TransferJobTransferSpec({
    this.awsS3CompatibleDataSource,
    this.awsS3DataSource,
    this.azureBlobStorageDataSource,
    this.gcsDataSink,
    this.gcsDataSource,
    this.hdfsDataSource,
    this.httpDataSource,
    this.objectConditions,
    this.posixDataSink,
    this.posixDataSource,
    this.sinkAgentPoolName,
    this.sourceAgentPoolName,
    this.transferManifest,
    this.transferOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsS3CompatibleDataSource': ?awsS3CompatibleDataSource == null
          ? null
          : awsS3CompatibleDataSource!.toMap(),
      'awsS3DataSource': ?awsS3DataSource == null
          ? null
          : awsS3DataSource!.toMap(),
      'azureBlobStorageDataSource': ?azureBlobStorageDataSource == null
          ? null
          : azureBlobStorageDataSource!.toMap(),
      'gcsDataSink': ?gcsDataSink == null ? null : gcsDataSink!.toMap(),
      'gcsDataSource': ?gcsDataSource == null ? null : gcsDataSource!.toMap(),
      'hdfsDataSource': ?hdfsDataSource == null
          ? null
          : hdfsDataSource!.toMap(),
      'httpDataSource': ?httpDataSource == null
          ? null
          : httpDataSource!.toMap(),
      'objectConditions': ?objectConditions == null
          ? null
          : objectConditions!.toMap(),
      'posixDataSink': ?posixDataSink == null ? null : posixDataSink!.toMap(),
      'posixDataSource': ?posixDataSource == null
          ? null
          : posixDataSource!.toMap(),
      'sinkAgentPoolName': ?sinkAgentPoolName,
      'sourceAgentPoolName': ?sourceAgentPoolName,
      'transferManifest': ?transferManifest == null
          ? null
          : transferManifest!.toMap(),
      'transferOptions': ?transferOptions == null
          ? null
          : transferOptions!.toMap(),
    };
  }

  factory TransferJobTransferSpec.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpec(
      awsS3CompatibleDataSource: map['awsS3CompatibleDataSource'] == null
          ? null
          : TransferJobTransferSpecAwsS3CompatibleDataSource.fromMap(
              (map['awsS3CompatibleDataSource'] as Map).cast<String, dynamic>(),
            ),
      awsS3DataSource: map['awsS3DataSource'] == null
          ? null
          : TransferJobTransferSpecAwsS3DataSource.fromMap(
              (map['awsS3DataSource'] as Map).cast<String, dynamic>(),
            ),
      azureBlobStorageDataSource: map['azureBlobStorageDataSource'] == null
          ? null
          : TransferJobTransferSpecAzureBlobStorageDataSource.fromMap(
              (map['azureBlobStorageDataSource'] as Map)
                  .cast<String, dynamic>(),
            ),
      gcsDataSink: map['gcsDataSink'] == null
          ? null
          : TransferJobTransferSpecGcsDataSink.fromMap(
              (map['gcsDataSink'] as Map).cast<String, dynamic>(),
            ),
      gcsDataSource: map['gcsDataSource'] == null
          ? null
          : TransferJobTransferSpecGcsDataSource.fromMap(
              (map['gcsDataSource'] as Map).cast<String, dynamic>(),
            ),
      hdfsDataSource: map['hdfsDataSource'] == null
          ? null
          : TransferJobTransferSpecHdfsDataSource.fromMap(
              (map['hdfsDataSource'] as Map).cast<String, dynamic>(),
            ),
      httpDataSource: map['httpDataSource'] == null
          ? null
          : TransferJobTransferSpecHttpDataSource.fromMap(
              (map['httpDataSource'] as Map).cast<String, dynamic>(),
            ),
      objectConditions: map['objectConditions'] == null
          ? null
          : TransferJobTransferSpecObjectConditions.fromMap(
              (map['objectConditions'] as Map).cast<String, dynamic>(),
            ),
      posixDataSink: map['posixDataSink'] == null
          ? null
          : TransferJobTransferSpecPosixDataSink.fromMap(
              (map['posixDataSink'] as Map).cast<String, dynamic>(),
            ),
      posixDataSource: map['posixDataSource'] == null
          ? null
          : TransferJobTransferSpecPosixDataSource.fromMap(
              (map['posixDataSource'] as Map).cast<String, dynamic>(),
            ),
      sinkAgentPoolName: map['sinkAgentPoolName'] == null
          ? null
          : map['sinkAgentPoolName'] as String,
      sourceAgentPoolName: map['sourceAgentPoolName'] == null
          ? null
          : map['sourceAgentPoolName'] as String,
      transferManifest: map['transferManifest'] == null
          ? null
          : TransferJobTransferSpecTransferManifest.fromMap(
              (map['transferManifest'] as Map).cast<String, dynamic>(),
            ),
      transferOptions: map['transferOptions'] == null
          ? null
          : TransferJobTransferSpecTransferOptions.fromMap(
              (map['transferOptions'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
