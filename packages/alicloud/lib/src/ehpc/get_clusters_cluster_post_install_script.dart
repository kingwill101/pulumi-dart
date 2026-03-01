// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterPostInstallScript {
  /// The parameters of the script.
  final String args;
  /// The download path of the script.
  final String url;

  /// Creates a new [GetClustersClusterPostInstallScript].
  /// [args] The parameters of the script.
  /// [url] The download path of the script.
  GetClustersClusterPostInstallScript({
    required this.args,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'url': url,
    };
  }

  factory GetClustersClusterPostInstallScript.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterPostInstallScript(
      args: map['args'] as String,
      url: map['url'] as String,
    );
  }
}

