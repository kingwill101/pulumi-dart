// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'employee_properties.dart';

/// {@template pulumi_contoso_employee_args_doc}
/// The set of arguments for Employee.
/// {@endtemplate}
/// {@macro pulumi_contoso_employee_args_doc}
class EmployeeArgs {
  /// The name of the Employee
  final pulumi.Input<String>? employeeName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<EmployeeProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EmployeeArgs].
  /// [employeeName] The name of the Employee
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EmployeeArgs({
    pulumi.Output<String>? employeeName,
    pulumi.Output<String>? location,
    pulumi.Output<EmployeeProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      employeeName = pulumi.Input.asOptionalInput<String>(employeeName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<EmployeeProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'employeeName': ?employeeName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<EmployeeProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EmployeeArgs.fromMap(Map<String, dynamic> map) {
    return EmployeeArgs(
      employeeName: map['employeeName'] == null ? null : pulumi.Output.create<String>(map['employeeName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<EmployeeProperties>(EmployeeProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

