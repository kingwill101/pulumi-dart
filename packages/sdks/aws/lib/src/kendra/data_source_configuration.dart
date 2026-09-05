// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_configuration_s3_configuration.dart';
import 'data_source_configuration_template_configuration.dart';
import 'data_source_configuration_web_crawler_configuration.dart';

class DataSourceConfiguration {
  /// A block that provides the configuration information to connect to an Amazon S3 bucket as your data source. Detailed below.
  final pulumi.Input<DataSourceConfigurationS3Configuration?>? s3Configuration;
  /// A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.
  final pulumi.Input<DataSourceConfigurationTemplateConfiguration?>? templateConfiguration;
  /// A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.
  final pulumi.Input<DataSourceConfigurationWebCrawlerConfiguration?>? webCrawlerConfiguration;

  /// Creates a new [DataSourceConfiguration].
  /// [s3Configuration] A block that provides the configuration information to connect to an Amazon S3 bucket as your data source. Detailed below.
  /// [templateConfiguration] A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.
  /// [webCrawlerConfiguration] A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.
  const DataSourceConfiguration({
    this.s3Configuration,
    this.templateConfiguration,
    this.webCrawlerConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': ?pulumi.Input.mapOptionalInputValue<DataSourceConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
      'templateConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSourceConfigurationTemplateConfiguration, Map<String, dynamic>>(templateConfiguration, (value) => value.toMap()),
      'webCrawlerConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSourceConfigurationWebCrawlerConfiguration, Map<String, dynamic>>(webCrawlerConfiguration, (value) => value.toMap()),
    };
  }

  factory DataSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceConfiguration(
      s3Configuration: (() { final guardedValue = map['s3Configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceConfigurationS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateConfiguration: (() { final guardedValue = map['templateConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceConfigurationTemplateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webCrawlerConfiguration: (() { final guardedValue = map['webCrawlerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceConfigurationWebCrawlerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
