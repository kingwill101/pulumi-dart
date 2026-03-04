// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBuildServiceBuildResultLog.
class GetBuildServiceBuildResultLogResult {
  /// The public download URL of this build result log
  final String? blobUrl;

  /// Creates a new [GetBuildServiceBuildResultLogResult].
  /// [blobUrl] The public download URL of this build result log
  GetBuildServiceBuildResultLogResult({this.blobUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'blobUrl': ?blobUrl};
  }

  factory GetBuildServiceBuildResultLogResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBuildServiceBuildResultLogResult(
      blobUrl: (() {
        final guardedValue = map['blobUrl'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
