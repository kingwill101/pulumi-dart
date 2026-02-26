// ignore_for_file: unused_element, unnecessary_cast

class DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration {
  /// Your secret ARN, which you can create in AWS Secrets Manager. The credentials are optional. You use a secret if web proxy credentials are required to connect to a website host. Amazon Kendra currently support basic authentication to connect to a web proxy server. The secret stores your credentials.
  final String? credentials;

  /// The name of the website host you want to connect to via a web proxy server. For example, the host name of `https://a.example.com/page1.html` is `"a.example.com"`.
  final String host;

  /// The port number of the website host you want to connect to via a web proxy server. For example, the port for `https://a.example.com/page1.html` is <span pulumi-lang-nodejs="`443`" pulumi-lang-dotnet="`443`" pulumi-lang-go="`443`" pulumi-lang-python="`443`" pulumi-lang-yaml="`443`" pulumi-lang-java="`443`">`443`</span>, the standard port for HTTPS.
  final int port;

  DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration({
    this.credentials,
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final credentialsValue = credentials;
    if (credentialsValue != null) {
      map['credentials'] = credentialsValue;
    }
    map['host'] = host;
    map['port'] = port;
    return map;
  }

  factory DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSourceConfigurationWebCrawlerConfigurationProxyConfiguration(
      credentials:
          map['credentials'] == null ? null : map['credentials'] as String,
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
