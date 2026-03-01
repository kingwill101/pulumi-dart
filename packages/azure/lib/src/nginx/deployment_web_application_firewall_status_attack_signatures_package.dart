// ignore_for_file: unused_element, unnecessary_cast


class DeploymentWebApplicationFirewallStatusAttackSignaturesPackage {
  /// The revision date and time of the threat campaigns package.
  final String? revisionDatetime;
  /// The version of the threat campaigns package.
  final String? version;

  /// Creates a new [DeploymentWebApplicationFirewallStatusAttackSignaturesPackage].
  /// [revisionDatetime] The revision date and time of the threat campaigns package.
  /// [version] The version of the threat campaigns package.
  DeploymentWebApplicationFirewallStatusAttackSignaturesPackage({
    this.revisionDatetime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': ?revisionDatetime,
      'version': ?version,
    };
  }

  factory DeploymentWebApplicationFirewallStatusAttackSignaturesPackage.fromMap(Map<String, dynamic> map) {
    return DeploymentWebApplicationFirewallStatusAttackSignaturesPackage(
      revisionDatetime: map['revisionDatetime'] == null ? null : map['revisionDatetime'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

