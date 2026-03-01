// ignore_for_file: unused_element, unnecessary_cast


/// IP Group properties.
class IpGroupProperties {
  /// IP Address type.
  final String? ipAddressType;
  /// List of IP Prefixes.
  final List<String>? ipPrefixes;
  /// IP Group name.
  final String? name;

  /// Creates a new [IpGroupProperties].
  /// [ipAddressType] IP Address type.
  /// [ipPrefixes] List of IP Prefixes.
  /// [name] IP Group name.
  IpGroupProperties({
    this.ipAddressType,
    this.ipPrefixes,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'ipPrefixes': ?ipPrefixes,
      'name': ?name,
    };
  }

  factory IpGroupProperties.fromMap(Map<String, dynamic> map) {
    return IpGroupProperties(
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      ipPrefixes: map['ipPrefixes'] == null ? null : (map['ipPrefixes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

