// ignore_for_file: unused_element, unnecessary_cast

import '../service_perimeters_service_perimeter_spec/service_perimeters_service_perimeter_spec.dart';
import '../service_perimeters_service_perimeter_status/service_perimeters_service_perimeter_status.dart';

class ServicePerimetersServicePerimeter {
  /// (Output)
  /// Time the AccessPolicy was created in UTC.
  final String? createTime;

  /// Description of the ServicePerimeter and its use. Does not affect
  /// behavior.
  final String? description;

  /// Resource name for the ServicePerimeter. The<span pulumi-lang-nodejs=" shortName " pulumi-lang-dotnet=" ShortName " pulumi-lang-go=" shortName " pulumi-lang-python=" short_name " pulumi-lang-yaml=" shortName " pulumi-lang-java=" shortName "> short_name </span>component must
  /// begin with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}
  final String name;

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
  final String? perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration.
  /// This configuration allows to specify and test ServicePerimeter configuration
  /// without enforcing actual access restrictions. Only allowed to be set when
  /// the `useExplicitDryRunSpec` flag is set.
  /// Structure is documented below.
  final ServicePerimetersServicePerimeterSpec? spec;

  /// ServicePerimeter configuration. Specifies sets of resources,
  /// restricted services and access levels that determine
  /// perimeter content and boundaries.
  /// Structure is documented below.
  final ServicePerimetersServicePerimeterStatus? status;

  /// Human readable title. Must be unique within the Policy.
  final String title;

  /// (Output)
  /// Time the AccessPolicy was updated in UTC.
  final String? updateTime;

  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
  /// for all Service Perimeters, and that spec is identical to the status for those
  /// Service Perimeters. When this flag is set, it inhibits the generation of the
  /// implicit spec, thereby allowing the user to explicitly provide a
  /// configuration ("spec") to use in a dry-run version of the Service Perimeter.
  /// This allows the user to test changes to the enforced config ("status") without
  /// actually enforcing them. This testing is done through analyzing the differences
  /// between currently enforced and suggested restrictions. useExplicitDryRunSpec must
  /// bet set to True if any of the fields in the spec are set to non-default values.
  final bool? useExplicitDryRunSpec;

  ServicePerimetersServicePerimeter({
    this.createTime,
    this.description,
    required this.name,
    this.perimeterType,
    this.spec,
    this.status,
    required this.title,
    this.updateTime,
    this.useExplicitDryRunSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    final perimeterTypeValue = perimeterType;
    if (perimeterTypeValue != null) {
      map['perimeterType'] = perimeterTypeValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] = specValue.toMap();
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue.toMap();
    }
    map['title'] = title;
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    final useExplicitDryRunSpecValue = useExplicitDryRunSpec;
    if (useExplicitDryRunSpecValue != null) {
      map['useExplicitDryRunSpec'] = useExplicitDryRunSpecValue;
    }
    return map;
  }

  factory ServicePerimetersServicePerimeter.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeter(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      perimeterType:
          map['perimeterType'] == null ? null : map['perimeterType'] as String,
      spec: map['spec'] == null
          ? null
          : ServicePerimetersServicePerimeterSpec.fromMap(
              (map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null
          ? null
          : ServicePerimetersServicePerimeterStatus.fromMap(
              (map['status'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
      useExplicitDryRunSpec: map['useExplicitDryRunSpec'] == null
          ? null
          : map['useExplicitDryRunSpec'] as bool,
    );
  }
}
