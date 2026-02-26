// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getService.
class GetServiceArgs4 {
  final Input<String> serviceId;
  final Input<String> v3Id;
  final Input<String> v3Id1;

  GetServiceArgs4({
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

  factory GetServiceArgs4.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs4(
      serviceId: Input.asInput<String>(map['serviceId']),
      v3Id: Input.asInput<String>(map['v3Id']),
      v3Id1: Input.asInput<String>(map['v3Id1']),
    );
  }
}
