// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Lb resources.
class LbState {
  /// ARN of the Lightsail load balancer.
  final pulumi.Input<String>? arn;
  /// Timestamp when the load balancer was created.
  final pulumi.Input<String>? createdAt;
  /// DNS name of the load balancer.
  final pulumi.Input<String>? dnsName;
  /// Health check path of the load balancer. Default value `/`.
  final pulumi.Input<String>? healthCheckPath;
  /// Instance port the load balancer will connect to.
  final pulumi.Input<int>? instancePort;
  /// IP address type of the load balancer. Valid values: `dualstack`, `ipv4`. Default value `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Protocol of the load balancer.
  final pulumi.Input<String>? protocol;
  /// Public ports of the load balancer.
  final pulumi.Input<List<int>>? publicPorts;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Support code for the load balancer. Include this code in your email to support when you have questions about a load balancer in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  final pulumi.Input<String>? supportCode;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LbState].
  /// [arn] ARN of the Lightsail load balancer.
  /// [createdAt] Timestamp when the load balancer was created.
  /// [dnsName] DNS name of the load balancer.
  /// [healthCheckPath] Health check path of the load balancer. Default value `/`.
  /// [instancePort] Instance port the load balancer will connect to.
  /// [ipAddressType] IP address type of the load balancer. Valid values: `dualstack`, `ipv4`. Default value `dualstack`.
  /// [name] Name of the Lightsail load balancer.
  /// [protocol] Protocol of the load balancer.
  /// [publicPorts] Public ports of the load balancer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [supportCode] Support code for the load balancer. Include this code in your email to support when you have questions about a load balancer in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const LbState({
    this.arn,
    this.createdAt,
    this.dnsName,
    this.healthCheckPath,
    this.instancePort,
    this.ipAddressType,
    this.name,
    this.protocol,
    this.publicPorts,
    this.region,
    this.supportCode,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'dnsName': ?dnsName,
      'healthCheckPath': ?healthCheckPath,
      'instancePort': ?instancePort,
      'ipAddressType': ?ipAddressType,
      'name': ?name,
      'protocol': ?protocol,
      'publicPorts': ?publicPorts,
      'region': ?region,
      'supportCode': ?supportCode,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LbState.fromMap(Map<String, dynamic> map) {
    return LbState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckPath: (() { final guardedValue = map['healthCheckPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instancePort: (() { final guardedValue = map['instancePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicPorts: (() { final guardedValue = map['publicPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportCode: (() { final guardedValue = map['supportCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
