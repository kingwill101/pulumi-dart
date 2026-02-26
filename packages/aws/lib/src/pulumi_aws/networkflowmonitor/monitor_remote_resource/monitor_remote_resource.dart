// ignore_for_file: unused_element, unnecessary_cast

class MonitorRemoteResource {
  /// The identifier of the resource. For VPC resources, this is the VPC ARN.
  final String identifier;

  /// The type of the resource. Valid values are `AWS::EC2::VPC`, `AWS::EC2::Subnet`, `AWS::EC2::AvailabilityZone`, `AWS::EC2::Region`, and `AWS::EKS::Cluster`.
  final String type;

  MonitorRemoteResource({
    required this.identifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    map['type'] = type;
    return map;
  }

  factory MonitorRemoteResource.fromMap(Map<String, dynamic> map) {
    return MonitorRemoteResource(
      identifier: map['identifier'] as String,
      type: map['type'] as String,
    );
  }
}
