// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Instance.
class InstanceArgs5 {
  /// A map contains the attributes of the instance. Check the [doc](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#API_RegisterInstance_RequestSyntax) for the supported attributes and syntax.
  final Input<Map<String, String>> attributes;

  /// The ID of the service instance.
  final Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the service that you want to use to create the instance.
  final Input<String> serviceId;

  InstanceArgs5({
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

  factory InstanceArgs5.fromMap(Map<String, dynamic> map) {
    return InstanceArgs5(
      attributes: Input.asInput<Map<String, String>>(map['attributes']),
      instanceId: Input.asInput<String>(map['instanceId']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
