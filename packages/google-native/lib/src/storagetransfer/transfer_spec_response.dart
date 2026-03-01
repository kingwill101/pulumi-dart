// ignore_for_file: unused_element, unnecessary_cast

import 'aws_s3_compatible_data_response.dart';
import 'aws_s3_data_response.dart';
import 'azure_blob_storage_data_response.dart';
import 'gcs_data_response.dart';
import 'http_data_response.dart';
import 'object_conditions_response.dart';
import 'posix_filesystem_response.dart';
import 'transfer_manifest_response.dart';
import 'transfer_options_response.dart';

/// Configuration for running a transfer.
class TransferSpecResponse {
  /// An AWS S3 compatible data source.
  final AwsS3CompatibleDataResponse awsS3CompatibleDataSource;

  /// An AWS S3 data source.
  final AwsS3DataResponse awsS3DataSource;

  /// An Azure Blob Storage data source.
  final AzureBlobStorageDataResponse azureBlobStorageDataSource;

  /// A Cloud Storage data sink.
  final GcsDataResponse gcsDataSink;

  /// A Cloud Storage data source.
  final GcsDataResponse gcsDataSource;

  /// For transfers between file systems, specifies a Cloud Storage bucket to be used as an intermediate location through which to transfer data. See [Transfer data between file systems](https://cloud.google.com/storage-transfer/docs/file-to-file) for more information.
  final GcsDataResponse gcsIntermediateDataLocation;

  /// An HTTP URL data source.
  final HttpDataResponse httpDataSource;

  /// Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' "last modification time" do not exclude objects in a data sink.
  final ObjectConditionsResponse objectConditions;

  /// A POSIX Filesystem data sink.
  final PosixFilesystemResponse posixDataSink;

  /// A POSIX Filesystem data source.
  final PosixFilesystemResponse posixDataSource;

  /// Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
  final String sinkAgentPoolName;

  /// Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
  final String sourceAgentPoolName;

  /// A manifest file provides a list of objects to be transferred from the data source. This field points to the location of the manifest file. Otherwise, the entire source bucket is used. ObjectConditions still apply.
  final TransferManifestResponse transferManifest;

  /// If the option delete_objects_unique_in_sink is `true` and time-based object conditions such as 'last modification time' are specified, the request fails with an INVALID_ARGUMENT error.
  final TransferOptionsResponse transferOptions;

  /// Creates a new [TransferSpecResponse].
  /// [awsS3CompatibleDataSource] An AWS S3 compatible data source.
  /// [awsS3DataSource] An AWS S3 data source.
  /// [azureBlobStorageDataSource] An Azure Blob Storage data source.
  /// [gcsDataSink] A Cloud Storage data sink.
  /// [gcsDataSource] A Cloud Storage data source.
  /// [gcsIntermediateDataLocation] For transfers between file systems, specifies a Cloud Storage bucket to be used as an intermediate location through which to transfer data. See [Transfer data between file systems](https://cloud.google.com/storage-transfer/docs/file-to-file) for more information.
  /// [httpDataSource] An HTTP URL data source.
  /// [objectConditions] Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' "last modification time" do not exclude objects in a data sink.
  /// [posixDataSink] A POSIX Filesystem data sink.
  /// [posixDataSource] A POSIX Filesystem data source.
  /// [sinkAgentPoolName] Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.
  /// [sourceAgentPoolName] Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.
  /// [transferManifest] A manifest file provides a list of objects to be transferred from the data source. This field points to the location of the manifest file. Otherwise, the entire source bucket is used. ObjectConditions still apply.
  /// [transferOptions] If the option delete_objects_unique_in_sink is `true` and time-based object conditions such as 'last modification time' are specified, the request fails with an INVALID_ARGUMENT error.
  TransferSpecResponse({
    required this.awsS3CompatibleDataSource,
    required this.awsS3DataSource,
    required this.azureBlobStorageDataSource,
    required this.gcsDataSink,
    required this.gcsDataSource,
    required this.gcsIntermediateDataLocation,
    required this.httpDataSource,
    required this.objectConditions,
    required this.posixDataSink,
    required this.posixDataSource,
    required this.sinkAgentPoolName,
    required this.sourceAgentPoolName,
    required this.transferManifest,
    required this.transferOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsS3CompatibleDataSource': awsS3CompatibleDataSource.toMap(),
      'awsS3DataSource': awsS3DataSource.toMap(),
      'azureBlobStorageDataSource': azureBlobStorageDataSource.toMap(),
      'gcsDataSink': gcsDataSink.toMap(),
      'gcsDataSource': gcsDataSource.toMap(),
      'gcsIntermediateDataLocation': gcsIntermediateDataLocation.toMap(),
      'httpDataSource': httpDataSource.toMap(),
      'objectConditions': objectConditions.toMap(),
      'posixDataSink': posixDataSink.toMap(),
      'posixDataSource': posixDataSource.toMap(),
      'sinkAgentPoolName': sinkAgentPoolName,
      'sourceAgentPoolName': sourceAgentPoolName,
      'transferManifest': transferManifest.toMap(),
      'transferOptions': transferOptions.toMap(),
    };
  }

  factory TransferSpecResponse.fromMap(Map<String, dynamic> map) {
    return TransferSpecResponse(
      awsS3CompatibleDataSource: AwsS3CompatibleDataResponse.fromMap(
        (map['awsS3CompatibleDataSource'] as Map).cast<String, dynamic>(),
      ),
      awsS3DataSource: AwsS3DataResponse.fromMap(
        (map['awsS3DataSource'] as Map).cast<String, dynamic>(),
      ),
      azureBlobStorageDataSource: AzureBlobStorageDataResponse.fromMap(
        (map['azureBlobStorageDataSource'] as Map).cast<String, dynamic>(),
      ),
      gcsDataSink: GcsDataResponse.fromMap(
        (map['gcsDataSink'] as Map).cast<String, dynamic>(),
      ),
      gcsDataSource: GcsDataResponse.fromMap(
        (map['gcsDataSource'] as Map).cast<String, dynamic>(),
      ),
      gcsIntermediateDataLocation: GcsDataResponse.fromMap(
        (map['gcsIntermediateDataLocation'] as Map).cast<String, dynamic>(),
      ),
      httpDataSource: HttpDataResponse.fromMap(
        (map['httpDataSource'] as Map).cast<String, dynamic>(),
      ),
      objectConditions: ObjectConditionsResponse.fromMap(
        (map['objectConditions'] as Map).cast<String, dynamic>(),
      ),
      posixDataSink: PosixFilesystemResponse.fromMap(
        (map['posixDataSink'] as Map).cast<String, dynamic>(),
      ),
      posixDataSource: PosixFilesystemResponse.fromMap(
        (map['posixDataSource'] as Map).cast<String, dynamic>(),
      ),
      sinkAgentPoolName: map['sinkAgentPoolName'] as String,
      sourceAgentPoolName: map['sourceAgentPoolName'] as String,
      transferManifest: TransferManifestResponse.fromMap(
        (map['transferManifest'] as Map).cast<String, dynamic>(),
      ),
      transferOptions: TransferOptionsResponse.fromMap(
        (map['transferOptions'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
