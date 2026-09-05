// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_get_vpc_connection_get_vpc_connection_args_doc}
/// Arguments for getVpcConnection.
/// {@endtemplate}
/// {@macro pulumi_msk_get_vpc_connection_get_vpc_connection_args_doc}
class GetVpcConnectionArgs {
  /// ARN of the VPC Connection.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of key-value pairs assigned to the VPC Connection.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetVpcConnectionArgs].
  /// [arn] ARN of the VPC Connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of key-value pairs assigned to the VPC Connection.
  const GetVpcConnectionArgs({
    required this.arn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVpcConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcConnectionArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
