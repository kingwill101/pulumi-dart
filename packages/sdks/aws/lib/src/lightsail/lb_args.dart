// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_lb_lb_args_doc}
/// The set of arguments for Lb.
/// {@endtemplate}
/// {@macro pulumi_lightsail_lb_lb_args_doc}
class LbArgs {
  /// Health check path of the load balancer. Default value `/`.
  final pulumi.Input<String>? healthCheckPath;
  /// Instance port the load balancer will connect to.
  final pulumi.Input<int> instancePort;
  /// IP address type of the load balancer. Valid values: `dualstack`, `ipv4`. Default value `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LbArgs].
  /// [healthCheckPath] Health check path of the load balancer. Default value `/`.
  /// [instancePort] Instance port the load balancer will connect to.
  /// [ipAddressType] IP address type of the load balancer. Valid values: `dualstack`, `ipv4`. Default value `dualstack`.
  /// [name] Name of the Lightsail load balancer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LbArgs({
    this.healthCheckPath,
    required this.instancePort,
    this.ipAddressType,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckPath': ?healthCheckPath,
      'instancePort': instancePort,
      'ipAddressType': ?ipAddressType,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory LbArgs.fromMap(Map<String, dynamic> map) {
    return LbArgs(
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath'] as String).input(),
      instancePort: (map['instancePort'] as int).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

