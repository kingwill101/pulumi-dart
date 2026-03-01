// ignore_for_file: unused_element, unnecessary_cast


/// The set of properties for control public access.
class PublicAccessProperties {
  /// The allowed set of subnets when access is restricted.
  final List<String>? allowedSubnets;

  /// Creates a new [PublicAccessProperties].
  /// [allowedSubnets] The allowed set of subnets when access is restricted.
  PublicAccessProperties({
    this.allowedSubnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubnets': ?allowedSubnets,
    };
  }

  factory PublicAccessProperties.fromMap(Map<String, dynamic> map) {
    return PublicAccessProperties(
      allowedSubnets: map['allowedSubnets'] == null ? null : (map['allowedSubnets'] as List).cast<String>(),
    );
  }
}

