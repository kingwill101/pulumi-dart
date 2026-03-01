// ignore_for_file: unused_element, unnecessary_cast


class GetRegionResolver {
  /// The IPv4 addresses for this region’s DNS resolvers, separated by commas.
  final String ipv4;
  /// The IPv6 addresses for this region’s DNS resolvers, separated by commas.
  final String ipv6;

  /// Creates a new [GetRegionResolver].
  /// [ipv4] The IPv4 addresses for this region’s DNS resolvers, separated by commas.
  /// [ipv6] The IPv6 addresses for this region’s DNS resolvers, separated by commas.
  GetRegionResolver({
    required this.ipv4,
    required this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ipv4,
      'ipv6': ipv6,
    };
  }

  factory GetRegionResolver.fromMap(Map<String, dynamic> map) {
    return GetRegionResolver(
      ipv4: map['ipv4'] as String,
      ipv6: map['ipv6'] as String,
    );
  }
}

