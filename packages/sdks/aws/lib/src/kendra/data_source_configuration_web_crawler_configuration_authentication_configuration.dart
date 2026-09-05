// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_configuration_web_crawler_configuration_authentication_configuration_basic_authentication.dart';

class DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration {
  /// The list of configuration information that's required to connect to and crawl a website host using basic authentication credentials. The list includes the name and port number of the website host. Detailed below.
  final pulumi.Input<List<DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication>?>? basicAuthentications;

  /// Creates a new [DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration].
  /// [basicAuthentications] The list of configuration information that's required to connect to and crawl a website host using basic authentication credentials. The list includes the name and port number of the website host. Detailed below.
  const DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration({
    this.basicAuthentications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuthentications': ?pulumi.Input.mapOptionalInputValue<List<DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication>, List<Map<String, dynamic>>>(basicAuthentications, (value) => pulumi.Input.encodeList<DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration(
      basicAuthentications: (() { final guardedValue = map['basicAuthentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication>(guardedValue, (value) => DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
