// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceVpcConnectionProperties {
  /// The Amazon Resource Name (ARN) for the VPC connection.
  final pulumi.Input<String> vpcConnectionArn;

  /// Creates a new [DataSourceVpcConnectionProperties].
  /// [vpcConnectionArn] The Amazon Resource Name (ARN) for the VPC connection.
  const DataSourceVpcConnectionProperties({
    required this.vpcConnectionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcConnectionArn': vpcConnectionArn,
    };
  }

  factory DataSourceVpcConnectionProperties.fromMap(Map<String, dynamic> map) {
    return DataSourceVpcConnectionProperties(
      vpcConnectionArn: pulumi.Input.fromValue(map['vpcConnectionArn'] as String),
    );
  }
}
