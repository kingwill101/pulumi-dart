// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Lb.
class LbArgs {
  /// Health check path of the load balancer. Default value `/`.
  final Input<String>? healthCheckPath;

  /// Instance port the load balancer will connect to.
  final Input<int> instancePort;

  /// IP address type of the load balancer. Valid values: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>, <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>. Default value <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>.
  final Input<String>? ipAddressType;

  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      healthCheckPath: Input.asOptionalInput<String>(map['healthCheckPath']),
      instancePort: Input.asInput<int>(map['instancePort']),
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
