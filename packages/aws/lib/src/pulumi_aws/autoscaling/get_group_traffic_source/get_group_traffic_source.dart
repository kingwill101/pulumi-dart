// ignore_for_file: unused_element, unnecessary_cast

class GetGroupTrafficSource {
  /// Identifies the traffic source. For Application Load Balancers, Gateway Load Balancers, Network Load Balancers, and VPC Lattice, this will be the Amazon Resource Name (ARN) for a target group in this account and Region. For Classic Load Balancers, this will be the name of the Classic Load Balancer in this account and Region.
  final String identifier;

  /// Traffic source type.
  final String type;

  GetGroupTrafficSource({
    required this.identifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    map['type'] = type;
    return map;
  }

  factory GetGroupTrafficSource.fromMap(Map<String, dynamic> map) {
    return GetGroupTrafficSource(
      identifier: map['identifier'] as String,
      type: map['type'] as String,
    );
  }
}
