// ignore_for_file: unused_element, unnecessary_cast


/// Route Properties.
class StaticRouteProperties {
  /// List of next hop addresses.
  final List<String> nextHop;
  /// Prefix of the route.
  final String prefix;

  /// Creates a new [StaticRouteProperties].
  /// [nextHop] List of next hop addresses.
  /// [prefix] Prefix of the route.
  StaticRouteProperties({
    required this.nextHop,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHop': nextHop,
      'prefix': prefix,
    };
  }

  factory StaticRouteProperties.fromMap(Map<String, dynamic> map) {
    return StaticRouteProperties(
      nextHop: (map['nextHop'] as List).cast<String>(),
      prefix: map['prefix'] as String,
    );
  }
}

