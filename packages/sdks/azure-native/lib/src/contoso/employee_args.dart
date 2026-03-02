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
    this.employeeName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      employeeName: map['employeeName'] == null ? null : (map['employeeName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (EmployeeProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

