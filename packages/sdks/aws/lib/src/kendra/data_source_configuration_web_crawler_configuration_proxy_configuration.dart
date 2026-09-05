// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration {
  /// Your secret ARN, which you can create in AWS Secrets Manager. The credentials are optional. You use a secret if web proxy credentials are required to connect to a website host. Amazon Kendra currently support basic authentication to connect to a web proxy server. The secret stores your credentials.
  final pulumi.Input<String?>? credentials;
  /// The name of the website host you want to connect to via a web proxy server. For example, the host name of `https://a.example.com/page1.html` is `"a.example.com"`.
  final pulumi.Input<String> host;
  /// The port number of the website host you want to connect to via a web proxy server. For example, the port for `https://a.example.com/page1.html` is `443`, the standard port for HTTPS.
  final pulumi.Input<int> port;

  /// Creates a new [DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration].
  /// [credentials] Your secret ARN, which you can create in AWS Secrets Manager. The credentials are optional. You use a secret if web proxy credentials are required to connect to a website host. Amazon Kendra currently support basic authentication to connect to a web proxy server. The secret stores your credentials.
  /// [host] The name of the website host you want to connect to via a web proxy server. For example, the host name of `https://a.example.com/page1.html` is `"a.example.com"`.
  /// [port] The port number of the website host you want to connect to via a web proxy server. For example, the port for `https://a.example.com/page1.html` is `443`, the standard port for HTTPS.
  const DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration({
    this.credentials,
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?credentials,
      'host': host,
      'port': port,
    };
  }

  factory DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration(
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
