// ignore_for_file: unused_element, unnecessary_cast


class KubernetesFleetManagerHubProfile {
  final String dnsPrefix;
  final String? fqdn;
  final String? kubernetesVersion;

  /// Creates a new [KubernetesFleetManagerHubProfile].
  /// [dnsPrefix] Required.
  /// [fqdn] Optional.
  /// [kubernetesVersion] Optional.
  KubernetesFleetManagerHubProfile({
    required this.dnsPrefix,
    this.fqdn,
    this.kubernetesVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPrefix': dnsPrefix,
      'fqdn': ?fqdn,
      'kubernetesVersion': ?kubernetesVersion,
    };
  }

  factory KubernetesFleetManagerHubProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesFleetManagerHubProfile(
      dnsPrefix: map['dnsPrefix'] as String,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      kubernetesVersion: map['kubernetesVersion'] == null ? null : map['kubernetesVersion'] as String,
    );
  }
}

