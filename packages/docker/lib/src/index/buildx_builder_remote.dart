// ignore_for_file: unused_element, unnecessary_cast


class BuildxBuilderRemote {
  /// Absolute path to the TLS certificate authority used for validation.
  final String? cacert;
  /// Absolute path to the TLS client certificate to present to buildkitd.
  final String? cert;
  /// Automatically load images to the Docker Engine image store. Defaults to `false`
  final bool? defaultLoad;
  /// Sets the TLS client key.
  final String? key;
  /// TLS server name used in requests.
  final String? servername;

  /// Creates a new [BuildxBuilderRemote].
  /// [cacert] Absolute path to the TLS certificate authority used for validation.
  /// [cert] Absolute path to the TLS client certificate to present to buildkitd.
  /// [defaultLoad] Automatically load images to the Docker Engine image store. Defaults to `false`
  /// [key] Sets the TLS client key.
  /// [servername] TLS server name used in requests.
  BuildxBuilderRemote({
    this.cacert,
    this.cert,
    this.defaultLoad,
    this.key,
    this.servername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacert': ?cacert,
      'cert': ?cert,
      'defaultLoad': ?defaultLoad,
      'key': ?key,
      'servername': ?servername,
    };
  }

  factory BuildxBuilderRemote.fromMap(Map<String, dynamic> map) {
    return BuildxBuilderRemote(
      cacert: map['cacert'] == null ? null : map['cacert'] as String,
      cert: map['cert'] == null ? null : map['cert'] as String,
      defaultLoad: map['defaultLoad'] == null ? null : map['defaultLoad'] as bool,
      key: map['key'] == null ? null : map['key'] as String,
      servername: map['servername'] == null ? null : map['servername'] as String,
    );
  }
}

