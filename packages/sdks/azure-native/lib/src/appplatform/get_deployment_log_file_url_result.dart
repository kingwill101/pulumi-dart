// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDeploymentLogFileUrl.
class GetDeploymentLogFileUrlResult {
  /// URL of the log file
  final String? url;

  /// Creates a new [GetDeploymentLogFileUrlResult].
  /// [url] URL of the log file
  const GetDeploymentLogFileUrlResult({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory GetDeploymentLogFileUrlResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentLogFileUrlResult(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
