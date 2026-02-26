// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServicePerimeterResource.
class ServicePerimeterResourceArgs {
  /// The name of the Service Perimeter to add this resource to.
  final Input<String> perimeterName;

  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  final Input<String> resource;

  ServicePerimeterResourceArgs({
    required this.perimeterName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['perimeterName'] = perimeterName;
    map['resource'] = resource;
    return map;
  }

  factory ServicePerimeterResourceArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterResourceArgs(
      perimeterName: Input.asInput<String>(map['perimeterName']),
      resource: Input.asInput<String>(map['resource']),
    );
  }
}
