// ignore_for_file: unused_element, unnecessary_cast

import '../data_source_configuration_s3_configuration_access_control_list_configuration/data_source_configuration_s3_configuration_access_control_list_configuration.dart';
import '../data_source_configuration_s3_configuration_documents_metadata_configuration/data_source_configuration_s3_configuration_documents_metadata_configuration.dart';

class DataSourceConfigurationS3Configuration {
  /// A block that provides the path to the S3 bucket that contains the user context filtering files for the data source. For the format of the file, see [Access control for S3 data sources](https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html). Detailed below.
  final DataSourceConfigurationS3ConfigurationAccessControlListConfiguration?
      accessControlListConfiguration;

  /// The name of the bucket that contains the documents.
  final String bucketName;

  /// A block that defines the Document metadata files that contain information such as the document access control information, source URI, document author, and custom attributes. Each metadata file contains metadata about a single document. Detailed below.
  final DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration?
      documentsMetadataConfiguration;

  /// A list of glob patterns for documents that should not be indexed. If a document that matches an inclusion prefix or inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to [Exclusion Patterns for more examples](https://docs.aws.amazon.com/kendra/latest/dg/API_S3DataSourceConfiguration.html#Kendra-Type-S3DataSourceConfiguration-ExclusionPatterns).
  final List<String>? exclusionPatterns;

  /// A list of glob patterns for documents that should be indexed. If a document that matches an inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to [Inclusion Patterns for more examples](https://docs.aws.amazon.com/kendra/latest/dg/API_S3DataSourceConfiguration.html#Kendra-Type-S3DataSourceConfiguration-InclusionPatterns).
  final List<String>? inclusionPatterns;

  /// A list of S3 prefixes for the documents that should be included in the index.
  final List<String>? inclusionPrefixes;

  DataSourceConfigurationS3Configuration({
    this.accessControlListConfiguration,
    required this.bucketName,
    this.documentsMetadataConfiguration,
    this.exclusionPatterns,
    this.inclusionPatterns,
    this.inclusionPrefixes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessControlListConfigurationValue = accessControlListConfiguration;
    if (accessControlListConfigurationValue != null) {
      map['accessControlListConfiguration'] =
          accessControlListConfigurationValue.toMap();
    }
    map['bucketName'] = bucketName;
    final documentsMetadataConfigurationValue = documentsMetadataConfiguration;
    if (documentsMetadataConfigurationValue != null) {
      map['documentsMetadataConfiguration'] =
          documentsMetadataConfigurationValue.toMap();
    }
    final exclusionPatternsValue = exclusionPatterns;
    if (exclusionPatternsValue != null) {
      map['exclusionPatterns'] = exclusionPatternsValue;
    }
    final inclusionPatternsValue = inclusionPatterns;
    if (inclusionPatternsValue != null) {
      map['inclusionPatterns'] = inclusionPatternsValue;
    }
    final inclusionPrefixesValue = inclusionPrefixes;
    if (inclusionPrefixesValue != null) {
      map['inclusionPrefixes'] = inclusionPrefixesValue;
    }
    return map;
  }

  factory DataSourceConfigurationS3Configuration.fromMap(
      Map<String, dynamic> map) {
    return DataSourceConfigurationS3Configuration(
      accessControlListConfiguration: map['accessControlListConfiguration'] ==
              null
          ? null
          : DataSourceConfigurationS3ConfigurationAccessControlListConfiguration
              .fromMap((map['accessControlListConfiguration'] as Map)
                  .cast<String, dynamic>()),
      bucketName: map['bucketName'] as String,
      documentsMetadataConfiguration: map['documentsMetadataConfiguration'] ==
              null
          ? null
          : DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration
              .fromMap((map['documentsMetadataConfiguration'] as Map)
                  .cast<String, dynamic>()),
      exclusionPatterns: map['exclusionPatterns'] == null
          ? null
          : (map['exclusionPatterns'] as List).cast<String>(),
      inclusionPatterns: map['inclusionPatterns'] == null
          ? null
          : (map['inclusionPatterns'] as List).cast<String>(),
      inclusionPrefixes: map['inclusionPrefixes'] == null
          ? null
          : (map['inclusionPrefixes'] as List).cast<String>(),
    );
  }
}
