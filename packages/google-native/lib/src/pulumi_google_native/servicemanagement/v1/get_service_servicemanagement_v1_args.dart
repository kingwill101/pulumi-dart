// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getService.
class GetServiceServicemanagementV1Args {
  final pulumi.Input<String> serviceName;

  GetServiceServicemanagementV1Args({
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceServicemanagementV1Args.fromMap(Map<String, dynamic> map) {
    return GetServiceServicemanagementV1Args(
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
    );
  }
}
