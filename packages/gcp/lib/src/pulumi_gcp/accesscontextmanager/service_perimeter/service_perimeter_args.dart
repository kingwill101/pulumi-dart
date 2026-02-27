// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_perimeter_spec/service_perimeter_spec.dart';
import '../service_perimeter_status/service_perimeter_status.dart';

/// The set of arguments for ServicePerimeter.
class ServicePerimeterArgs {
  /// Description of the ServicePerimeter and its use. Does not affect
  /// behavior.
  final Input<String>? description;

  /// Resource name for the ServicePerimeter. The short_name component must
  /// begin with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}
  final Input<String>? name;

  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  final Input<String> parent;

  /// Specifies the type of the Perimeter. There are two types: regular and
  /// bridge. Regular Service Perimeter contains resources, access levels,
  /// and restricted services. Every resource can be in at most
  /// ONE regular Service Perimeter.
  /// In addition to being in a regular service perimeter, a resource can also
  /// be in zero or more perimeter bridges. A perimeter bridge only contains
  /// resources. Cross project operations are permitted if all effected
  /// resources share some perimeter (whether bridge or regular). Perimeter
  /// Bridge does not contain access levels or services: those are governed
  /// entirely by the regular perimeter that resource is in.
  /// Perimeter Bridges are typically useful when building more complex
  /// topologies with many independent perimeters that need to share some data
  /// with a common perimeter, but should not be able to share data among
  /// themselves.
  /// Default value is `PERIMETER_TYPE_REGULAR`.
  /// Possible values are: `PERIMETER_TYPE_REGULAR`, `PERIMETER_TYPE_BRIDGE`.
  final Input<String>? perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration.
  /// This configuration allows to specify and test ServicePerimeter configuration
  /// without enforcing actual access restrictions. Only allowed to be set when
  /// the `useExplicitDryRunSpec` flag is set.
  /// Structure is documented below.
  final Input<ServicePerimeterSpec>? spec;

  /// ServicePerimeter configuration. Specifies sets of resources,
  /// restricted services and access levels that determine
  /// perimeter content and boundaries.
  /// Structure is documented below.
  final Input<ServicePerimeterStatus>? status;

  /// Human readable title. Must be unique within the Policy.
  final Input<String> title;

  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
  /// for all Service Perimeters, and that spec is identical to the status for those
  /// Service Perimeters. When this flag is set, it inhibits the generation of the
  /// implicit spec, thereby allowing the user to explicitly provide a
  /// configuration ("spec") to use in a dry-run version of the Service Perimeter.
  /// This allows the user to test changes to the enforced config ("status") without
  /// actually enforcing them. This testing is done through analyzing the differences
  /// between currently enforced and suggested restrictions. useExplicitDryRunSpec must
  /// bet set to True if any of the fields in the spec are set to non-default values.
  final Input<bool>? useExplicitDryRunSpec;

  ServicePerimeterArgs({
    this.description,
    this.name,
    required this.parent,
    this.perimeterType,
    this.spec,
    this.status,
    required this.title,
    this.useExplicitDryRunSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    final perimeterTypeValue = perimeterType;
    if (perimeterTypeValue != null) {
      map['perimeterType'] = perimeterTypeValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] = Input.mapOptionalInputValue<ServicePerimeterSpec,
          Map<String, dynamic>>(specValue, (value) => value.toMap());
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = Input.mapOptionalInputValue<ServicePerimeterStatus,
          Map<String, dynamic>>(statusValue, (value) => value.toMap());
    }
    map['title'] = title;
    final useExplicitDryRunSpecValue = useExplicitDryRunSpec;
    if (useExplicitDryRunSpecValue != null) {
      map['useExplicitDryRunSpec'] = useExplicitDryRunSpecValue;
    }
    return map;
  }

  factory ServicePerimeterArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
      perimeterType: Input.asOptionalInput<String>(map['perimeterType']),
      spec: Input.asOptionalInput<ServicePerimeterSpec>(map['spec']),
      status: Input.asOptionalInput<ServicePerimeterStatus>(map['status']),
      title: Input.asInput<String>(map['title']),
      useExplicitDryRunSpec:
          Input.asOptionalInput<bool>(map['useExplicitDryRunSpec']),
    );
  }
}
