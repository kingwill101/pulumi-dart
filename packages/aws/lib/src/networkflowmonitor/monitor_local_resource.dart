// ignore_for_file: unused_element, unnecessary_cast

class MonitorLocalResource {
  /// The identifier of the resource. For VPC resources, this is the VPC ARN.
  final String identifier;

  /// The type of the resource. Valid values are `AWS::EC2::VPC`, `AWS::EC2::Subnet`, `AWS::EC2::AvailabilityZone`, `AWS::EC2::Region`, and `AWS::EKS::Cluster`.
  final String type;

  /// Creates a new [MonitorLocalResource].
  /// [identifier] The identifier of the resource. For VPC resources, this is the VPC ARN.
  /// [type] The type of the resource. Valid values are `AWS::EC2::VPC`, `AWS::EC2::Subnet`, `AWS::EC2::AvailabilityZone`, `AWS::EC2::Region`, and `AWS::EKS::Cluster`.
  MonitorLocalResource({
    required this.identifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    map['type'] = type;
    return map;
  }

  factory MonitorLocalResource.fromMap(Map<String, dynamic> map) {
    return MonitorLocalResource(
      identifier: map['identifier'] as String,
      type: map['type'] as String,
    );
  }
}
