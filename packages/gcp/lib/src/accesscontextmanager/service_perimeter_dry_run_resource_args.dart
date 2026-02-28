// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_service_perimeter_dry_run_resource_service_perimeter_dry_run_resource_args_doc}
/// The set of arguments for ServicePerimeterDryRunResource.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_dry_run_resource_service_perimeter_dry_run_resource_args_doc}
class ServicePerimeterDryRunResourceArgs {
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeterName;

  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  final pulumi.Input<String> resource;

  /// Creates a new [ServicePerimeterDryRunResourceArgs].
  /// [perimeterName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  ServicePerimeterDryRunResourceArgs({
    required String perimeterName,
    required String resource,
  })  : perimeterName = pulumi.Input.asInput<String>(perimeterName),
        resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['perimeterName'] = perimeterName;
    map['resource'] = resource;
    return map;
  }

  factory ServicePerimeterDryRunResourceArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterDryRunResourceArgs(
      perimeterName: map['perimeterName'] as String,
      resource: map['resource'] as String,
    );
  }
}
