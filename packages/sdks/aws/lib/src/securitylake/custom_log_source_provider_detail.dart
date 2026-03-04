// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomLogSourceProviderDetail {
  /// The location of the partition in the Amazon S3 bucket for Security Lake.
  final pulumi.Input<String> location;

  /// The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  final pulumi.Input<String> roleArn;

  /// Creates a new [CustomLogSourceProviderDetail].
  /// [location] The location of the partition in the Amazon S3 bucket for Security Lake.
  /// [roleArn] The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  CustomLogSourceProviderDetail({
    required this.location,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': location, 'roleArn': roleArn};
  }

  factory CustomLogSourceProviderDetail.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceProviderDetail(
      location: pulumi.Input.fromValue(map['location'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
