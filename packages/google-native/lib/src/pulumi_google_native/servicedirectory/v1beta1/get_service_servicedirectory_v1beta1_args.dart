// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getService.
class GetServiceServicedirectoryV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  GetServiceServicedirectoryV1beta1Args({
    required this.location,
    required this.namespaceId,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['namespaceId'] = namespaceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetServiceServicedirectoryV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetServiceServicedirectoryV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      namespaceId: pulumi.Input.asInput<String>(map['namespaceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
