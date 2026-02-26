// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolConfigSshConfig {
  /// The name of the EC2 key pair used to login into cluster machines.
  final String ec2KeyPair;

  AwsNodePoolConfigSshConfig({
    required this.ec2KeyPair,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ec2KeyPair'] = ec2KeyPair;
    return map;
  }

  factory AwsNodePoolConfigSshConfig.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigSshConfig(
      ec2KeyPair: map['ec2KeyPair'] as String,
    );
  }
}
