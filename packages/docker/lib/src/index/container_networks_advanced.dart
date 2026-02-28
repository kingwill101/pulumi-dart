// ignore_for_file: unused_element, unnecessary_cast


class ContainerNetworksAdvanced {
  /// The network aliases of the container in the specific network.
  final List<String>? aliases;
  /// The IPV4 address of the container in the specific network.
  final String? ipv4Address;
  /// The IPV6 address of the container in the specific network.
  final String? ipv6Address;
  /// The MAC address of the container in the specific network.
  final String? macAddress;
  /// The name or id of the network to use. You can use `name` or `id` attribute from a `docker.Network` resource.
  final String name;

  /// Creates a new [ContainerNetworksAdvanced].
  /// [aliases] The network aliases of the container in the specific network.
  /// [ipv4Address] The IPV4 address of the container in the specific network.
  /// [ipv6Address] The IPV6 address of the container in the specific network.
  /// [macAddress] The MAC address of the container in the specific network.
  /// [name] The name or id of the network to use. You can use `name` or `id` attribute from a `docker.Network` resource.
  ContainerNetworksAdvanced({
    this.aliases,
    this.ipv4Address,
    this.ipv6Address,
    this.macAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'macAddress': ?macAddress,
      'name': name,
    };
  }

  factory ContainerNetworksAdvanced.fromMap(Map<String, dynamic> map) {
    return ContainerNetworksAdvanced(
      aliases: map['aliases'] == null ? null : (map['aliases'] as List).cast<String>(),
      ipv4Address: map['ipv4Address'] == null ? null : map['ipv4Address'] as String,
      ipv6Address: map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      name: map['name'] as String,
    );
  }
}

