// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getService.
class GetServiceArgs9 {
  final Input<String> serviceName;

  GetServiceArgs9({
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceArgs9.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs9(
      serviceName: Input.asInput<String>(map['serviceName']),
    );
  }
}
