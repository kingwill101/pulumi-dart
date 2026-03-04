// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_policy_table_policy_table_args_doc}
/// The set of arguments for PolicyTable.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_policy_table_policy_table_args_doc}
class PolicyTableArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Policy Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// EC2 Transit Gateway identifier.
  final pulumi.Input<String> transitGatewayId;

  /// Creates a new [PolicyTableArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Policy Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] EC2 Transit Gateway identifier.
  PolicyTableArgs({this.region, this.tags, required this.transitGatewayId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'transitGatewayId': transitGatewayId,
    };
  }

  factory PolicyTableArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTableArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitGatewayId: pulumi.Input.fromValue(
        map['transitGatewayId'] as String,
      ),
    );
  }
}
