// ignore_for_file: unused_element, unnecessary_cast

class InputVpc {
  /// A list of up to 5 EC2 VPC security group IDs to attach to the Input.
  final List<String>? securityGroupIds;

  /// A list of 2 VPC subnet IDs from the same VPC.
  final List<String> subnetIds;

  /// Creates a new [InputVpc].
  /// [securityGroupIds] A list of up to 5 EC2 VPC security group IDs to attach to the Input.
  /// [subnetIds] A list of 2 VPC subnet IDs from the same VPC.
  InputVpc({this.securityGroupIds, required this.subnetIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory InputVpc.fromMap(Map<String, dynamic> map) {
    return InputVpc(
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
    );
  }
}
