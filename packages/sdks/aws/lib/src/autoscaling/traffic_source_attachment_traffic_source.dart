// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficSourceAttachmentTrafficSource {
  /// Identifies the traffic source. For Application Load Balancers, Gateway Load Balancers, Network Load Balancers, and VPC Lattice, this will be the Amazon Resource Name (ARN) for a target group in this account and Region. For Classic Load Balancers, this will be the name of the Classic Load Balancer in this account and Region.
  final pulumi.Input<String> identifier;
  /// Provides additional context for the value of `identifier`.
  /// The following lists the valid values:
  /// `elb` if `identifier` is the name of a Classic Load Balancer.
  /// `elbv2` if `identifier` is the ARN of an Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target group.
  /// `vpc-lattice` if `identifier` is the ARN of a VPC Lattice target group.
  final pulumi.Input<String> type;

  /// Creates a new [TrafficSourceAttachmentTrafficSource].
  /// [identifier] Identifies the traffic source. For Application Load Balancers, Gateway Load Balancers, Network Load Balancers, and VPC Lattice, this will be the Amazon Resource Name (ARN) for a target group in this account and Region. For Classic Load Balancers, this will be the name of the Classic Load Balancer in this account and Region.
  /// [type] Provides additional context for the value of `identifier`.
  TrafficSourceAttachmentTrafficSource({
    required this.identifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'type': type,
    };
  }

  factory TrafficSourceAttachmentTrafficSource.fromMap(Map<String, dynamic> map) {
    return TrafficSourceAttachmentTrafficSource(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

