// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Instance.
class InstanceServicediscoveryArgs {
  /// A map contains the attributes of the instance. Check the [doc](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#API_RegisterInstance_RequestSyntax) for the supported attributes and syntax.
  final pulumi.Input<Map<String, String>> attributes;

  /// The ID of the service instance.
  final pulumi.Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the service that you want to use to create the instance.
  final pulumi.Input<String> serviceId;

  InstanceServicediscoveryArgs({
    required this.attributes,
    required this.instanceId,
    this.region,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributes'] = attributes;
    map['instanceId'] = instanceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory InstanceServicediscoveryArgs.fromMap(Map<String, dynamic> map) {
    return InstanceServicediscoveryArgs(
      attributes: pulumi.Input.asInput<Map<String, String>>(map['attributes']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
