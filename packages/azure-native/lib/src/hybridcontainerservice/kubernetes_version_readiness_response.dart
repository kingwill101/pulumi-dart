// ignore_for_file: unused_element, unnecessary_cast


/// Indicates whether the kubernetes version image is ready or not
class KubernetesVersionReadinessResponse {
  /// The error message for version not being ready
  final String errorMessage;
  /// Specifies the OS SKU used by the agent pool. The default is CBLMariner if OSType is Linux. The default is Windows2019 when OSType is Windows.
  final String? osSku;
  /// The particular KubernetesVersion Image OS Type (Linux, Windows)
  final String osType;
  /// Whether the kubernetes version image is ready or not
  final bool ready;

  /// Creates a new [KubernetesVersionReadinessResponse].
  /// [errorMessage] The error message for version not being ready
  /// [osSku] Specifies the OS SKU used by the agent pool. The default is CBLMariner if OSType is Linux. The default is Windows2019 when OSType is Windows.
  /// [osType] The particular KubernetesVersion Image OS Type (Linux, Windows)
  /// [ready] Whether the kubernetes version image is ready or not
  KubernetesVersionReadinessResponse({
    required this.errorMessage,
    this.osSku,
    required this.osType,
    required this.ready,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': errorMessage,
      'osSku': ?osSku,
      'osType': osType,
      'ready': ready,
    };
  }

  factory KubernetesVersionReadinessResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesVersionReadinessResponse(
      errorMessage: map['errorMessage'] as String,
      osSku: map['osSku'] == null ? null : map['osSku'] as String,
      osType: map['osType'] as String,
      ready: map['ready'] as bool,
    );
  }
}

