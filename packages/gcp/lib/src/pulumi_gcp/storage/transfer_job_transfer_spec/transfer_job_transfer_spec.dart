// ignore_for_file: unused_element, unnecessary_cast

import '../transfer_job_transfer_spec_aws_s3_compatible_data_source/transfer_job_transfer_spec_aws_s3_compatible_data_source.dart';
import '../transfer_job_transfer_spec_aws_s3_data_source/transfer_job_transfer_spec_aws_s3_data_source.dart';
import '../transfer_job_transfer_spec_azure_blob_storage_data_source/transfer_job_transfer_spec_azure_blob_storage_data_source.dart';
import '../transfer_job_transfer_spec_gcs_data_sink/transfer_job_transfer_spec_gcs_data_sink.dart';
import '../transfer_job_transfer_spec_gcs_data_source/transfer_job_transfer_spec_gcs_data_source.dart';
import '../transfer_job_transfer_spec_hdfs_data_source/transfer_job_transfer_spec_hdfs_data_source.dart';
import '../transfer_job_transfer_spec_http_data_source/transfer_job_transfer_spec_http_data_source.dart';
import '../transfer_job_transfer_spec_object_conditions/transfer_job_transfer_spec_object_conditions.dart';
import '../transfer_job_transfer_spec_posix_data_sink/transfer_job_transfer_spec_posix_data_sink.dart';
import '../transfer_job_transfer_spec_posix_data_source/transfer_job_transfer_spec_posix_data_source.dart';
import '../transfer_job_transfer_spec_transfer_manifest/transfer_job_transfer_spec_transfer_manifest.dart';
import '../transfer_job_transfer_spec_transfer_options/transfer_job_transfer_spec_transfer_options.dart';

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

  /// Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' <span pulumi-lang-nodejs="`lastModificationTime`" pulumi-lang-dotnet="`LastModificationTime`" pulumi-lang-go="`lastModificationTime`" pulumi-lang-python="`last_modification_time`" pulumi-lang-yaml="`lastModificationTime`" pulumi-lang-java="`lastModificationTime`">`last_modification_time`</span> do not exclude objects in a data sink. Structure documented below.
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

  /// Characteristics of how to treat files from datasource and sink during job. If the option <span pulumi-lang-nodejs="`deleteObjectsUniqueInSink`" pulumi-lang-dotnet="`DeleteObjectsUniqueInSink`" pulumi-lang-go="`deleteObjectsUniqueInSink`" pulumi-lang-python="`delete_objects_unique_in_sink`" pulumi-lang-yaml="`deleteObjectsUniqueInSink`" pulumi-lang-java="`deleteObjectsUniqueInSink`">`delete_objects_unique_in_sink`</span> is true, object conditions based on objects' <span pulumi-lang-nodejs="`lastModificationTime`" pulumi-lang-dotnet="`LastModificationTime`" pulumi-lang-go="`lastModificationTime`" pulumi-lang-python="`last_modification_time`" pulumi-lang-yaml="`lastModificationTime`" pulumi-lang-java="`lastModificationTime`">`last_modification_time`</span> are ignored and do not exclude objects in a data source or a data sink. Structure documented below.
  final TransferJobTransferSpecTransferOptions? transferOptions;

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
    final map = <String, dynamic>{};
    final awsS3CompatibleDataSourceValue = awsS3CompatibleDataSource;
    if (awsS3CompatibleDataSourceValue != null) {
      map['awsS3CompatibleDataSource'] = awsS3CompatibleDataSourceValue.toMap();
    }
    final awsS3DataSourceValue = awsS3DataSource;
    if (awsS3DataSourceValue != null) {
      map['awsS3DataSource'] = awsS3DataSourceValue.toMap();
    }
    final azureBlobStorageDataSourceValue = azureBlobStorageDataSource;
    if (azureBlobStorageDataSourceValue != null) {
      map['azureBlobStorageDataSource'] =
          azureBlobStorageDataSourceValue.toMap();
    }
    final gcsDataSinkValue = gcsDataSink;
    if (gcsDataSinkValue != null) {
      map['gcsDataSink'] = gcsDataSinkValue.toMap();
    }
    final gcsDataSourceValue = gcsDataSource;
    if (gcsDataSourceValue != null) {
      map['gcsDataSource'] = gcsDataSourceValue.toMap();
    }
    final hdfsDataSourceValue = hdfsDataSource;
    if (hdfsDataSourceValue != null) {
      map['hdfsDataSource'] = hdfsDataSourceValue.toMap();
    }
    final httpDataSourceValue = httpDataSource;
    if (httpDataSourceValue != null) {
      map['httpDataSource'] = httpDataSourceValue.toMap();
    }
    final objectConditionsValue = objectConditions;
    if (objectConditionsValue != null) {
      map['objectConditions'] = objectConditionsValue.toMap();
    }
    final posixDataSinkValue = posixDataSink;
    if (posixDataSinkValue != null) {
      map['posixDataSink'] = posixDataSinkValue.toMap();
    }
    final posixDataSourceValue = posixDataSource;
    if (posixDataSourceValue != null) {
      map['posixDataSource'] = posixDataSourceValue.toMap();
    }
    final sinkAgentPoolNameValue = sinkAgentPoolName;
    if (sinkAgentPoolNameValue != null) {
      map['sinkAgentPoolName'] = sinkAgentPoolNameValue;
    }
    final sourceAgentPoolNameValue = sourceAgentPoolName;
    if (sourceAgentPoolNameValue != null) {
      map['sourceAgentPoolName'] = sourceAgentPoolNameValue;
    }
    final transferManifestValue = transferManifest;
    if (transferManifestValue != null) {
      map['transferManifest'] = transferManifestValue.toMap();
    }
    final transferOptionsValue = transferOptions;
    if (transferOptionsValue != null) {
      map['transferOptions'] = transferOptionsValue.toMap();
    }
    return map;
  }

  factory TransferJobTransferSpec.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpec(
      awsS3CompatibleDataSource: map['awsS3CompatibleDataSource'] == null
          ? null
          : TransferJobTransferSpecAwsS3CompatibleDataSource.fromMap(
              (map['awsS3CompatibleDataSource'] as Map)
                  .cast<String, dynamic>()),
      awsS3DataSource: map['awsS3DataSource'] == null
          ? null
          : TransferJobTransferSpecAwsS3DataSource.fromMap(
              (map['awsS3DataSource'] as Map).cast<String, dynamic>()),
      azureBlobStorageDataSource: map['azureBlobStorageDataSource'] == null
          ? null
          : TransferJobTransferSpecAzureBlobStorageDataSource.fromMap(
              (map['azureBlobStorageDataSource'] as Map)
                  .cast<String, dynamic>()),
      gcsDataSink: map['gcsDataSink'] == null
          ? null
          : TransferJobTransferSpecGcsDataSink.fromMap(
              (map['gcsDataSink'] as Map).cast<String, dynamic>()),
      gcsDataSource: map['gcsDataSource'] == null
          ? null
          : TransferJobTransferSpecGcsDataSource.fromMap(
              (map['gcsDataSource'] as Map).cast<String, dynamic>()),
      hdfsDataSource: map['hdfsDataSource'] == null
          ? null
          : TransferJobTransferSpecHdfsDataSource.fromMap(
              (map['hdfsDataSource'] as Map).cast<String, dynamic>()),
      httpDataSource: map['httpDataSource'] == null
          ? null
          : TransferJobTransferSpecHttpDataSource.fromMap(
              (map['httpDataSource'] as Map).cast<String, dynamic>()),
      objectConditions: map['objectConditions'] == null
          ? null
          : TransferJobTransferSpecObjectConditions.fromMap(
              (map['objectConditions'] as Map).cast<String, dynamic>()),
      posixDataSink: map['posixDataSink'] == null
          ? null
          : TransferJobTransferSpecPosixDataSink.fromMap(
              (map['posixDataSink'] as Map).cast<String, dynamic>()),
      posixDataSource: map['posixDataSource'] == null
          ? null
          : TransferJobTransferSpecPosixDataSource.fromMap(
              (map['posixDataSource'] as Map).cast<String, dynamic>()),
      sinkAgentPoolName: map['sinkAgentPoolName'] == null
          ? null
          : map['sinkAgentPoolName'] as String,
      sourceAgentPoolName: map['sourceAgentPoolName'] == null
          ? null
          : map['sourceAgentPoolName'] as String,
      transferManifest: map['transferManifest'] == null
          ? null
          : TransferJobTransferSpecTransferManifest.fromMap(
              (map['transferManifest'] as Map).cast<String, dynamic>()),
      transferOptions: map['transferOptions'] == null
          ? null
          : TransferJobTransferSpecTransferOptions.fromMap(
              (map['transferOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
