// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Lb.
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

  LbArgs({
    this.healthCheckPath,
    required this.instancePort,
    this.ipAddressType,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final healthCheckPathValue = healthCheckPath;
    if (healthCheckPathValue != null) {
      map['healthCheckPath'] = healthCheckPathValue;
    }
    map['instancePort'] = instancePort;
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LbArgs.fromMap(Map<String, dynamic> map) {
    return LbArgs(
      healthCheckPath:
          pulumi.Input.asOptionalInput<String>(map['healthCheckPath']),
      instancePort: pulumi.Input.asInput<int>(map['instancePort']),
      ipAddressType: pulumi.Input.asOptionalInput<String>(map['ipAddressType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
