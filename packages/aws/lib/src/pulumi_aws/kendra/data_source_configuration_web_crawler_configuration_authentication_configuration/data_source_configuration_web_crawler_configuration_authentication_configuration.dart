// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_source_configuration_web_crawler_configuration_authentication_configuration_basic_authentication/data_source_configuration_web_crawler_configuration_authentication_configuration_basic_authentication.dart';

class DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration {
  /// The list of configuration information that's required to connect to and crawl a website host using basic authentication credentials. The list includes the name and port number of the website host. Detailed below.
  final List<
          DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication>?
      basicAuthentications;

  DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration({
    this.basicAuthentications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicAuthenticationsValue = basicAuthentications;
    if (basicAuthenticationsValue != null) {
      map['basicAuthentications'] = Input.encodeList<
          DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication,
          Map<String,
              dynamic>>(basicAuthenticationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfiguration(
      basicAuthentications: map['basicAuthentications'] == null
          ? null
          : Input.decodeList<
                  DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication>(
              map['basicAuthentications'],
              (value) =>
                  DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
