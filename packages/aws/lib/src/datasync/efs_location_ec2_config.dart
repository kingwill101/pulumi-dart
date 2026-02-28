// ignore_for_file: unused_element, unnecessary_cast

class EfsLocationEc2Config {
  /// List of Amazon Resource Names (ARNs) of the EC2 Security Groups that are associated with the EFS Mount Target.
  final List<String> securityGroupArns;

  /// Amazon Resource Name (ARN) of the EC2 Subnet that is associated with the EFS Mount Target.
  final String subnetArn;

  /// Creates a new [EfsLocationEc2Config].
  /// [securityGroupArns] List of Amazon Resource Names (ARNs) of the EC2 Security Groups that are associated with the EFS Mount Target.
  /// [subnetArn] Amazon Resource Name (ARN) of the EC2 Subnet that is associated with the EFS Mount Target.
  EfsLocationEc2Config({
    required this.securityGroupArns,
    required this.subnetArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupArns'] = securityGroupArns;
    map['subnetArn'] = subnetArn;
    return map;
  }

  factory EfsLocationEc2Config.fromMap(Map<String, dynamic> map) {
    return EfsLocationEc2Config(
      securityGroupArns: (map['securityGroupArns'] as List).cast<String>(),
      subnetArn: map['subnetArn'] as String,
    );
  }
}
