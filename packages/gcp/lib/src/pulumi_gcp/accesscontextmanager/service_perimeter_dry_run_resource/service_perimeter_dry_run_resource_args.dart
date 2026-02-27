// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ServicePerimeterDryRunResource.
class ServicePerimeterDryRunResourceArgs {
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeterName;

  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  final pulumi.Input<String> resource;

  ServicePerimeterDryRunResourceArgs({
    required this.perimeterName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['perimeterName'] = perimeterName;
    map['resource'] = resource;
    return map;
  }

  factory ServicePerimeterDryRunResourceArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterDryRunResourceArgs(
      perimeterName: pulumi.Input.asInput<String>(map['perimeterName']),
      resource: pulumi.Input.asInput<String>(map['resource']),
    );
  }
}
