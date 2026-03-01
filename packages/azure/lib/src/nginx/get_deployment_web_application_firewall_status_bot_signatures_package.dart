// ignore_for_file: unused_element, unnecessary_cast


class GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage {
  final String revisionDatetime;
  final String version;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage].
  /// [revisionDatetime] Required.
  /// [version] Required.
  GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage({
    required this.revisionDatetime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': revisionDatetime,
      'version': version,
    };
  }

  factory GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage(
      revisionDatetime: map['revisionDatetime'] as String,
      version: map['version'] as String,
    );
  }
}

