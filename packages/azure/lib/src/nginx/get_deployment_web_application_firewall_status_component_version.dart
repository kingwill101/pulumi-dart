// ignore_for_file: unused_element, unnecessary_cast


class GetDeploymentWebApplicationFirewallStatusComponentVersion {
  final String wafEngineVersion;
  final String wafNginxVersion;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatusComponentVersion].
  /// [wafEngineVersion] Required.
  /// [wafNginxVersion] Required.
  GetDeploymentWebApplicationFirewallStatusComponentVersion({
    required this.wafEngineVersion,
    required this.wafNginxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wafEngineVersion': wafEngineVersion,
      'wafNginxVersion': wafNginxVersion,
    };
  }

  factory GetDeploymentWebApplicationFirewallStatusComponentVersion.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewallStatusComponentVersion(
      wafEngineVersion: map['wafEngineVersion'] as String,
      wafNginxVersion: map['wafNginxVersion'] as String,
    );
  }
}

