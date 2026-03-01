// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration {
  /// The domain name label for the DNS settings.
  final String domainNameLabel;
  /// The idle timeout in minutes. This value must be between 4 and 30.
  final int idleTimeout;
  /// The name of the public IP address configuration
  final String name;

  /// Creates a new [ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration].
  /// [domainNameLabel] The domain name label for the DNS settings.
  /// [idleTimeout] The idle timeout in minutes. This value must be between 4 and 30.
  /// [name] The name of the public IP address configuration
  ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration({
    required this.domainNameLabel,
    required this.idleTimeout,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': domainNameLabel,
      'idleTimeout': idleTimeout,
      'name': name,
    };
  }

  factory ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration(
      domainNameLabel: map['domainNameLabel'] as String,
      idleTimeout: map['idleTimeout'] as int,
      name: map['name'] as String,
    );
  }
}

