// ignore_for_file: unused_element, unnecessary_cast

import 'data_source_configuration_s3_configuration.dart';
import 'data_source_configuration_template_configuration.dart';
import 'data_source_configuration_web_crawler_configuration.dart';

class DataSourceConfiguration {
  /// A block that provides the configuration information to connect to an Amazon S3 bucket as your data source. Detailed below.
  final DataSourceConfigurationS3Configuration? s3Configuration;

  /// A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.
  final DataSourceConfigurationTemplateConfiguration? templateConfiguration;

  /// A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.
  final DataSourceConfigurationWebCrawlerConfiguration? webCrawlerConfiguration;

  /// Creates a new [DataSourceConfiguration].
  /// [s3Configuration] A block that provides the configuration information to connect to an Amazon S3 bucket as your data source. Detailed below.
  /// [templateConfiguration] A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.
  /// [webCrawlerConfiguration] A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.
  DataSourceConfiguration({
    this.s3Configuration,
    this.templateConfiguration,
    this.webCrawlerConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': ?s3Configuration == null
          ? null
          : s3Configuration!.toMap(),
      'templateConfiguration': ?templateConfiguration == null
          ? null
          : templateConfiguration!.toMap(),
      'webCrawlerConfiguration': ?webCrawlerConfiguration == null
          ? null
          : webCrawlerConfiguration!.toMap(),
    };
  }

  factory DataSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceConfiguration(
      s3Configuration: map['s3Configuration'] == null
          ? null
          : DataSourceConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>(),
            ),
      templateConfiguration: map['templateConfiguration'] == null
          ? null
          : DataSourceConfigurationTemplateConfiguration.fromMap(
              (map['templateConfiguration'] as Map).cast<String, dynamic>(),
            ),
      webCrawlerConfiguration: map['webCrawlerConfiguration'] == null
          ? null
          : DataSourceConfigurationWebCrawlerConfiguration.fromMap(
              (map['webCrawlerConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
