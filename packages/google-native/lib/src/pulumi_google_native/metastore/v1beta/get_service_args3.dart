// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getService.
class GetServiceArgs3 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> serviceId;

  GetServiceArgs3({
    required this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetServiceArgs3.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs3(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceId: Input.asInput<String>(map['serviceId']),
    );
  }
}
