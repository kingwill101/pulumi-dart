// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication {
  /// Your secret ARN, which you can create in AWS Secrets Manager. You use a secret if basic authentication credentials are required to connect to a website. The secret stores your credentials of user name and password.
  final pulumi.Input<String> credentials;
  /// The name of the website host you want to connect to using authentication credentials. For example, the host name of `https://a.example.com/page1.html` is `"a.example.com"`.
  final pulumi.Input<String> host;
  /// The port number of the website host you want to connect to using authentication credentials. For example, the port for `https://a.example.com/page1.html` is `443`, the standard port for HTTPS.
  final pulumi.Input<int> port;

  /// Creates a new [DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication].
  /// [credentials] Your secret ARN, which you can create in AWS Secrets Manager. You use a secret if basic authentication credentials are required to connect to a website. The secret stores your credentials of user name and password.
  /// [host] The name of the website host you want to connect to using authentication credentials. For example, the host name of `https://a.example.com/page1.html` is `"a.example.com"`.
  /// [port] The port number of the website host you want to connect to using authentication credentials. For example, the port for `https://a.example.com/page1.html` is `443`, the standard port for HTTPS.
  DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication({
    required this.credentials,
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': credentials,
      'host': host,
      'port': port,
    };
  }

  factory DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication.fromMap(Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthentication(
      credentials: (map['credentials'] as String).input(),
      host: (map['host'] as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

