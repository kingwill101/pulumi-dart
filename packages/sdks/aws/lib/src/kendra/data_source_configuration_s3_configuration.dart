// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_configuration_s3_configuration_access_control_list_configuration.dart';
import 'data_source_configuration_s3_configuration_documents_metadata_configuration.dart';

class DataSourceConfigurationS3Configuration {
  /// A block that provides the path to the S3 bucket that contains the user context filtering files for the data source. For the format of the file, see [Access control for S3 data sources](https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html). Detailed below.
  final pulumi.Input<
    DataSourceConfigurationS3ConfigurationAccessControlListConfiguration
  >?
  accessControlListConfiguration;

  /// The name of the bucket that contains the documents.
  final pulumi.Input<String> bucketName;

  /// A block that defines the Document metadata files that contain information such as the document access control information, source URI, document author, and custom attributes. Each metadata file contains metadata about a single document. Detailed below.
  final pulumi.Input<
    DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration
  >?
  documentsMetadataConfiguration;

  /// A list of glob patterns for documents that should not be indexed. If a document that matches an inclusion prefix or inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to [Exclusion Patterns for more examples](https://docs.aws.amazon.com/kendra/latest/dg/API_S3DataSourceConfiguration.html#Kendra-Type-S3DataSourceConfiguration-ExclusionPatterns).
  final pulumi.Input<List<String>>? exclusionPatterns;

  /// A list of glob patterns for documents that should be indexed. If a document that matches an inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to [Inclusion Patterns for more examples](https://docs.aws.amazon.com/kendra/latest/dg/API_S3DataSourceConfiguration.html#Kendra-Type-S3DataSourceConfiguration-InclusionPatterns).
  final pulumi.Input<List<String>>? inclusionPatterns;

  /// A list of S3 prefixes for the documents that should be included in the index.
  final pulumi.Input<List<String>>? inclusionPrefixes;

  /// Creates a new [DataSourceConfigurationS3Configuration].
  /// [accessControlListConfiguration] A block that provides the path to the S3 bucket that contains the user context filtering files for the data source. For the format of the file, see [Access control for S3 data sources](https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html). Detailed below.
  /// [bucketName] The name of the bucket that contains the documents.
  /// [documentsMetadataConfiguration] A block that defines the Document metadata files that contain information such as the document access control information, source URI, document author, and custom attributes. Each metadata file contains metadata about a single document. Detailed below.
  /// [exclusionPatterns] A list of glob patterns for documents that should not be indexed. If a document that matches an inclusion prefix or inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to [Exclusion Patterns for more examples](https://docs.aws.amazon.com/kendra/latest/dg/API_S3DataSourceConfiguration.html#Kendra-Type-S3DataSourceConfiguration-ExclusionPatterns).
  /// [inclusionPatterns] A list of glob patterns for documents that should be indexed. If a document that matches an inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to [Inclusion Patterns for more examples](https://docs.aws.amazon.com/kendra/latest/dg/API_S3DataSourceConfiguration.html#Kendra-Type-S3DataSourceConfiguration-InclusionPatterns).
  /// [inclusionPrefixes] A list of S3 prefixes for the documents that should be included in the index.
  DataSourceConfigurationS3Configuration({
    this.accessControlListConfiguration,
    required this.bucketName,
    this.documentsMetadataConfiguration,
    this.exclusionPatterns,
    this.inclusionPatterns,
    this.inclusionPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlListConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            DataSourceConfigurationS3ConfigurationAccessControlListConfiguration,
            Map<String, dynamic>
          >(accessControlListConfiguration, (value) => value.toMap()),
      'bucketName': bucketName,
      'documentsMetadataConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration,
            Map<String, dynamic>
          >(documentsMetadataConfiguration, (value) => value.toMap()),
      'exclusionPatterns': ?exclusionPatterns,
      'inclusionPatterns': ?inclusionPatterns,
      'inclusionPrefixes': ?inclusionPrefixes,
    };
  }

  factory DataSourceConfigurationS3Configuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSourceConfigurationS3Configuration(
      accessControlListConfiguration: (() {
        final guardedValue = map['accessControlListConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataSourceConfigurationS3ConfigurationAccessControlListConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      documentsMetadataConfiguration: (() {
        final guardedValue = map['documentsMetadataConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      exclusionPatterns: (() {
        final guardedValue = map['exclusionPatterns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      inclusionPatterns: (() {
        final guardedValue = map['inclusionPatterns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      inclusionPrefixes: (() {
        final guardedValue = map['inclusionPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
