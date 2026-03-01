// ignore_for_file: unused_element, unnecessary_cast

class WorkstationClusterDomainConfig {
  /// Domain used by Workstations for HTTP ingress.
  final String domain;

  /// Creates a new [WorkstationClusterDomainConfig].
  /// [domain] Domain used by Workstations for HTTP ingress.
  WorkstationClusterDomainConfig({required this.domain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': domain};
  }

  factory WorkstationClusterDomainConfig.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterDomainConfig(domain: map['domain'] as String);
  }
}
