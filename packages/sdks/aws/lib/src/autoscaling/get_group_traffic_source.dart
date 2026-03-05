// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupTrafficSource {
  /// Identifies the traffic source. For Application Load Balancers, Gateway Load Balancers, Network Load Balancers, and VPC Lattice, this will be the Amazon Resource Name (ARN) for a target group in this account and Region. For Classic Load Balancers, this will be the name of the Classic Load Balancer in this account and Region.
  final pulumi.Input<String> identifier;
  /// Traffic source type.
  final pulumi.Input<String> type;

  /// Creates a new [GetGroupTrafficSource].
  /// [identifier] Identifies the traffic source. For Application Load Balancers, Gateway Load Balancers, Network Load Balancers, and VPC Lattice, this will be the Amazon Resource Name (ARN) for a target group in this account and Region. For Classic Load Balancers, this will be the name of the Classic Load Balancer in this account and Region.
  /// [type] Traffic source type.
  GetGroupTrafficSource({
    required this.identifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'type': type,
    };
  }

  factory GetGroupTrafficSource.fromMap(Map<String, dynamic> map) {
    return GetGroupTrafficSource(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

