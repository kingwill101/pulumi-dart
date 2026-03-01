// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Ipv4PrefixSpecification
class Ipv4PrefixSpecification {
  /// Property ipv4Prefix
  final String? ipv4Prefix;

  /// Creates a new [Ipv4PrefixSpecification].
  /// [ipv4Prefix] Property ipv4Prefix
  Ipv4PrefixSpecification({
    this.ipv4Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Prefix': ?ipv4Prefix,
    };
  }

  factory Ipv4PrefixSpecification.fromMap(Map<String, dynamic> map) {
    return Ipv4PrefixSpecification(
      ipv4Prefix: map['ipv4Prefix'] == null ? null : map['ipv4Prefix'] as String,
    );
  }
}

