// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_load_balancer_get_load_balancer_args_doc}
/// Arguments for getLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_alb_get_load_balancer_get_load_balancer_args_doc}
class GetLoadBalancerArgs {
  /// Full ARN of the load balancer.
  final pulumi.Input<String>? arn;

  /// Unique name of the load balancer.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Mapping of tags, each pair of which must exactly match a pair on the desired load balancer.
  ///
  /// > **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence. `tags` has lowest precedence.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLoadBalancerArgs].
  /// [arn] Full ARN of the load balancer.
  /// [name] Unique name of the load balancer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match a pair on the desired load balancer.
  GetLoadBalancerArgs({
    String? arn,
    String? name,
    String? region,
    Map<String, String>? tags,
  }) : arn = pulumi.Input.asOptionalInput<String>(arn),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
