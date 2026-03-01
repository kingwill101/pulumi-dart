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
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LbState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? dnsName,
    pulumi.Output<String>? healthCheckPath,
    pulumi.Output<int>? instancePort,
    pulumi.Output<String>? ipAddressType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protocol,
    pulumi.Output<List<int>>? publicPorts,
    pulumi.Output<String>? region,
    pulumi.Output<String>? supportCode,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      healthCheckPath = pulumi.Input.asOptionalInput<String>(healthCheckPath),
      instancePort = pulumi.Input.asOptionalInput<int>(instancePort),
      ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
      name = pulumi.Input.asOptionalInput<String>(name),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      publicPorts = pulumi.Input.asOptionalInput<List<int>>(publicPorts),
      region = pulumi.Input.asOptionalInput<String>(region),
      supportCode = pulumi.Input.asOptionalInput<String>(supportCode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      healthCheckPath: map['healthCheckPath'] == null ? null : pulumi.Output.create<String>(map['healthCheckPath'] as String),
      instancePort: map['instancePort'] == null ? null : pulumi.Output.create<int>(map['instancePort'] as int),
      ipAddressType: map['ipAddressType'] == null ? null : pulumi.Output.create<String>(map['ipAddressType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      publicPorts: map['publicPorts'] == null ? null : pulumi.Output.create<List<int>>((map['publicPorts'] as List).cast<int>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      supportCode: map['supportCode'] == null ? null : pulumi.Output.create<String>(map['supportCode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

