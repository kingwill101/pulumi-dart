// ignore_for_file: unused_element, unnecessary_cast

class GetClusterEnableK8sBetaApi {
  /// Enabled Kubernetes Beta APIs.
  final List<String> enabledApis;

  /// Creates a new [GetClusterEnableK8sBetaApi].
  /// [enabledApis] Enabled Kubernetes Beta APIs.
  GetClusterEnableK8sBetaApi({
    required this.enabledApis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabledApis'] = enabledApis;
    return map;
  }

  factory GetClusterEnableK8sBetaApi.fromMap(Map<String, dynamic> map) {
    return GetClusterEnableK8sBetaApi(
      enabledApis: (map['enabledApis'] as List).cast<String>(),
    );
  }
}
