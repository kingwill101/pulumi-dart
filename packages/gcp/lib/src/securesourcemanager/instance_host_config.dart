// ignore_for_file: unused_element, unnecessary_cast

class InstanceHostConfig {
  /// (Output)
  /// API hostname.
  final String? api;

  /// (Output)
  /// Git HTTP hostname.
  final String? gitHttp;

  /// (Output)
  /// Git SSH hostname.
  final String? gitSsh;

  /// (Output)
  /// HTML hostname.
  final String? html;

  /// Creates a new [InstanceHostConfig].
  /// [api] (Output)
  /// [gitHttp] (Output)
  /// [gitSsh] (Output)
  /// [html] (Output)
  InstanceHostConfig({this.api, this.gitHttp, this.gitSsh, this.html});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': ?api,
      'gitHttp': ?gitHttp,
      'gitSsh': ?gitSsh,
      'html': ?html,
    };
  }

  factory InstanceHostConfig.fromMap(Map<String, dynamic> map) {
    return InstanceHostConfig(
      api: map['api'] == null ? null : map['api'] as String,
      gitHttp: map['gitHttp'] == null ? null : map['gitHttp'] as String,
      gitSsh: map['gitSsh'] == null ? null : map['gitSsh'] as String,
      html: map['html'] == null ? null : map['html'] as String,
    );
  }
}
