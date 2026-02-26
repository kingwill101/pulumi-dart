// ignore_for_file: unused_element, unnecessary_cast

class DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration {
  /// A prefix used to filter metadata configuration files in the AWS S3 bucket. The S3 bucket might contain multiple metadata files. Use <span pulumi-lang-nodejs="`s3Prefix`" pulumi-lang-dotnet="`S3Prefix`" pulumi-lang-go="`s3Prefix`" pulumi-lang-python="`s3_prefix`" pulumi-lang-yaml="`s3Prefix`" pulumi-lang-java="`s3Prefix`">`s3_prefix`</span> to include only the desired metadata files.
  final String? s3Prefix;

  DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration({
    this.s3Prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3PrefixValue = s3Prefix;
    if (s3PrefixValue != null) {
      map['s3Prefix'] = s3PrefixValue;
    }
    return map;
  }

  factory DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSourceConfigurationS3ConfigurationDocumentsMetadataConfiguration(
      s3Prefix: map['s3Prefix'] == null ? null : map['s3Prefix'] as String,
    );
  }
}
