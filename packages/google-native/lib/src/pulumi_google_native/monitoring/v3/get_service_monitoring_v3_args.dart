// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getService.
class GetServiceMonitoringV3Args {
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> v3Id;
  final pulumi.Input<String> v3Id1;

  GetServiceMonitoringV3Args({
    required this.serviceId,
    required this.v3Id,
    required this.v3Id1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceId'] = serviceId;
    map['v3Id'] = v3Id;
    map['v3Id1'] = v3Id1;
    return map;
  }

  factory GetServiceMonitoringV3Args.fromMap(Map<String, dynamic> map) {
    return GetServiceMonitoringV3Args(
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
      v3Id: pulumi.Input.asInput<String>(map['v3Id']),
      v3Id1: pulumi.Input.asInput<String>(map['v3Id1']),
    );
  }
}
