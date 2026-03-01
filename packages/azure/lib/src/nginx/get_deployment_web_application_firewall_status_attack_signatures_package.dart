// ignore_for_file: unused_element, unnecessary_cast


class GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage {
  final String revisionDatetime;
  final String version;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage].
  /// [revisionDatetime] Required.
  /// [version] Required.
  GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage({
    required this.revisionDatetime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': revisionDatetime,
      'version': version,
    };
  }

  factory GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage(
      revisionDatetime: map['revisionDatetime'] as String,
      version: map['version'] as String,
    );
  }
}

