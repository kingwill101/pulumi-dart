// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_configuration_web_crawler_configuration_authentication_configuration_basic_authentication.dart';

class DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration {
  /// The list of configuration information that's required to connect to and crawl a website host using basic authentication credentials. The list includes the name and port number of the website host. Detailed below.
  final List<DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication>? basicAuthentications;

  /// Creates a new [DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration].
  /// [basicAuthentications] The list of configuration information that's required to connect to and crawl a website host using basic authentication credentials. The list includes the name and port number of the website host. Detailed below.
  DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration({
    this.basicAuthentications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuthentications': ?basicAuthentications == null ? null : pulumi.Input.encodeList<DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication, Map<String, dynamic>>(basicAuthentications!, (value) => value.toMap()),
    };
  }

  factory DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration(
      basicAuthentications: map['basicAuthentications'] == null ? null : pulumi.Input.decodeList<DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication>(map['basicAuthentications'], (value) => DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

