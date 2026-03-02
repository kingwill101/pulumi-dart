// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_assessment_v3_properties.dart';

/// {@template pulumi_migrate_sql_assessment_v3_operation_args_doc}
/// The set of arguments for SqlAssessmentV3Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_sql_assessment_v3_operation_args_doc}
class SqlAssessmentV3OperationArgs {
  /// SQL Assessment arm name.
  final pulumi.Input<String>? assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<SqlAssessmentV3Properties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [SqlAssessmentV3OperationArgs].
  /// [assessmentName] SQL Assessment arm name.
  /// [projectName] Assessment Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  SqlAssessmentV3OperationArgs({
    this.assessmentName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': ?assessmentName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<SqlAssessmentV3Properties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory SqlAssessmentV3OperationArgs.fromMap(Map<String, dynamic> map) {
    return SqlAssessmentV3OperationArgs(
      assessmentName: map['assessmentName'] == null ? null : (map['assessmentName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: map['properties'] == null ? null : (SqlAssessmentV3Properties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

