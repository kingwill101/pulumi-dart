// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionRedirect2 {
  final String host;
  final String path;

  /// Port of the listener. Required if <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> is not set.
  final String port;
  final String protocol;
  final String query;
  final String statusCode;

  GetListenerDefaultActionRedirect2({
    required this.host,
    required this.path,
    required this.port,
    required this.protocol,
    required this.query,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['path'] = path;
    map['port'] = port;
    map['protocol'] = protocol;
    map['query'] = query;
    map['statusCode'] = statusCode;
    return map;
  }

  factory GetListenerDefaultActionRedirect2.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionRedirect2(
      host: map['host'] as String,
      path: map['path'] as String,
      port: map['port'] as String,
      protocol: map['protocol'] as String,
      query: map['query'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}
