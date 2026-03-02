// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorRemoteResource {
  /// The identifier of the resource. For VPC resources, this is the VPC ARN.
  final pulumi.Input<String> identifier;
  /// The type of the resource. Valid values are `AWS::EC2::VPC`, `AWS::EC2::Subnet`, `AWS::EC2::AvailabilityZone`, `AWS::EC2::Region`, and `AWS::EKS::Cluster`.
  final pulumi.Input<String> type;

  /// Creates a new [MonitorRemoteResource].
  /// [identifier] The identifier of the resource. For VPC resources, this is the VPC ARN.
  /// [type] The type of the resource. Valid values are `AWS::EC2::VPC`, `AWS::EC2::Subnet`, `AWS::EC2::AvailabilityZone`, `AWS::EC2::Region`, and `AWS::EKS::Cluster`.
  MonitorRemoteResource({
    required this.identifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'type': type,
    };
  }

  factory MonitorRemoteResource.fromMap(Map<String, dynamic> map) {
    return MonitorRemoteResource(
      identifier: (map['identifier'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

