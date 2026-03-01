// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Ipv6PrefixSpecification
class Ipv6PrefixSpecification {
  /// Property ipv6Prefix
  final String? ipv6Prefix;

  /// Creates a new [Ipv6PrefixSpecification].
  /// [ipv6Prefix] Property ipv6Prefix
  Ipv6PrefixSpecification({
    this.ipv6Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6Prefix': ?ipv6Prefix,
    };
  }

  factory Ipv6PrefixSpecification.fromMap(Map<String, dynamic> map) {
    return Ipv6PrefixSpecification(
      ipv6Prefix: map['ipv6Prefix'] == null ? null : map['ipv6Prefix'] as String,
    );
  }
}

