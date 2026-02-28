// ignore_for_file: unused_element, unnecessary_cast

class DataSourceVpcConnectionProperties {
  /// The Amazon Resource Name (ARN) for the VPC connection.
  final String vpcConnectionArn;

  /// Creates a new [DataSourceVpcConnectionProperties].
  /// [vpcConnectionArn] The Amazon Resource Name (ARN) for the VPC connection.
  DataSourceVpcConnectionProperties({
    required this.vpcConnectionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vpcConnectionArn'] = vpcConnectionArn;
    return map;
  }

  factory DataSourceVpcConnectionProperties.fromMap(Map<String, dynamic> map) {
    return DataSourceVpcConnectionProperties(
      vpcConnectionArn: map['vpcConnectionArn'] as String,
    );
  }
}
